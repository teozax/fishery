#include "core.h"

void CCL (my_data_fifo& inputImage, my_data_fifo& outputImage)
{
	my_float  even[lab_nums];
	#pragma HLS array_partition variable=even cyclic factor=200
	my_float window_sizes[lab_nums] ;
	#pragma HLS array_partition variable=window_sizes cyclic factor=200
	my_data_fifo ws;	// fifo of window sizes
	#pragma HLS STREAM variable=ws DEPTH = 200 dim=1

	uint16_t local_median, previous, above;
	uint16_t row = 0, pos, Lx, Ly, Lj, New_label = 1,  posx, posy;
	uint16_t r=0, c=0, myrow, mycol, key=0,col;
	my_float P,P1,P2;
	Lj=0;int g=0;
	int i, j,div,mod,div1,mod1;
	int N = 1;
	my_float labels [7000];
	my_float results [MAX_HEIGHT][MAX_WIDTH];

	my_float SI [MAX_HEIGHT][MAX_WIDTH];	// Sizes Image
	my_float sizes [MAX_HEIGHT][MAX_WIDTH];
	#pragma HLS array_partition variable=SI complete

	my_float label = 1;
	labels[0] = 0;
	my_float pixel, temp, LabelUsed;

		inputImage>>pixel;
		// the very first pixel has to be checked alone, because it does not have predecessor pixels that have labels
		if (pixel!=0){	// if it is foreground, store a new label at it
			results[0][0] = label;
			labels[label] = label;
			label++;	// increment the label value, because it was just used and has to take a new value
		}else // if it is background
			results[0][0]=0;

		//first row
		first_row:for(i=1;i<MAX_WIDTH;i++)
		{
		#pragma HLS PIPELINE
			inputImage>>pixel;	// get pixel
			if(pixel==0)	// if it is foreground
			{
				results[0][i] = 0;
			}else	// if it is background
			{
				temp = results[0][i-1];	// get previous pixel's label
				if(temp!=0){	// if previous pixel has a label, then store it to current pixel
					results[0][i] = temp;
				}else{	// if previous pixel does not have a label, then store a new label to current pixel
					results[0][i]=label;
					labels[label] = label;
					label++;	// increment the label value, because it was just used and has to take a new value
				}
			}
		}

		//All the other rows
		for( j=1;j<MAX_HEIGHT;j++)
		{	for( i=0;i<MAX_WIDTH;i++)
			{
			#pragma HLS PIPELINE
				inputImage>>pixel;	// get pixel
				if(pixel!=0) // if it is foreground
				{
					previous = results[j][i-1];
					above = results[j-1][i];
					if( previous!=0 && above!=0)	// if both previous and above pixels have a label
					{
						if(previous>above) // if previous pixel has most recent (newer) label than above pixel (older), then store the label of above to current and previous pixels, such that all three belong to the same object
						{
							labels[previous]=labels[labels[above]];
							results[j][i]=above;
						}
						else // if above pixel has most recent (newer) label than previous pixel (older), then store the label of previous to current and above pixels, such that all three belong to the same object
						{
							labels[above]=labels[labels[previous]];
							results[j][i]=previous;
						}
					}else
					{	// if only one of the previous and above pixels have a tag, then store it to current pixel
						if(previous!=0){
							results[j][i]=previous;
						}else if(above!=0){
							results[j][i]=above;
						}
						else{	// if none of the previous and above pixels have a tag, then store the new tag (label) to current pixel
							results[j][i]=label;
							labels[label]=label;
							label++;	// increment the label value, because it was just used and has to take a new value
						}
					}
				}
				else{	// if it is background
					results[j][i]=0;
				}
			}
		}
		// assign labels on array results
		second_pass_Y:for( j=0;j<MAX_HEIGHT;j++){
			second_pass_X:for( i=0;i<MAX_WIDTH;i++){
				#pragma HLS PIPELINE
				my_float value = labels[results[j][i]];
				results[j][i] = labels[value];
			}
		}
		// init labels to use this array for the size of labels
		init_sizes_table:for( i=0;i<7000;i++)
		{
			#pragma HLS UNROLL factor=10
			labels[i] = 0;
		}
		//count each label's size
		count_label_size_Y:for( j=0;j<MAX_HEIGHT;j++){
			count_label_size_X:for( i=0;i<MAX_WIDTH;i++){
				#pragma HLS PIPELINE
				if (results[j][i]!=0)
					labels[results[j][i]]++;
			}
		}

		for (int i=0; i<=5; i++)	// sizes from 1 to 6 are very small holes and appear at most of the pixels of each window. It was observed that if we take out these sizes then the rest of the sizes
		{
			#pragma HLS UNROLL
			window_sizes[i] = i + 1;
		}

		int lab_size;
		N = 6;
		for(j=0;j<MAX_HEIGHT;j++)
		{	for(i=0;i<MAX_WIDTH;i++)
			{
			#pragma HLS PIPELINE
				sizes[j][i] = 0;
				// take the size of each label and put it into all the places of SI that match the places of results that have that label
				SI[j][i] = labels[results[j][i]];
				lab_size = labels[results[j][i]];
				// also put that size into window_sizes for the check of error
				if (lab_size > 6)
				{	window_sizes [N] = lab_size; N++;	}
			}
		}

		local_sort (window_sizes, even, &N);	// sort the sizes of the whole image
		my_float global_median = window_sizes [N/2];

	  exloop1: for (row=0; (r==0) || (c==0); row+=offset)	// when we both exceed array-image limits means that we have processed all windows
		{
			#pragma HLS LOOP_TRIPCOUNT min=6 max=6
			myrow = row + offset;
	    if (myrow > MAX_HEIGHT){	// if you exceed vertical limit of image then shift the window inside the image, such that its under side fits the last row of the image
				myrow = MAX_HEIGHT;	// 'myrow' defines the under side of windows
	      row = MAX_HEIGHT - offset;	// 'row' defines the upper side of windows
	    	r = 1;	//	notify that you have reached the last set of windows in the image
	    }
	    c = 0;

		  exloop2: for (col = 0; c==0; col+=offset)
			{
				mycol = col + offset;
	      if (mycol > MAX_WIDTH){	// if you exceed horizontal limit of image then shift the window inside the image, such that its right side fits the last column of the image
					mycol = MAX_WIDTH;	// 'mycol' defines the right side of windows
	      	col = MAX_WIDTH - offset;	// 'col' defines the left side of windows
	        c = 1;	// notify that you have reached the last window of the set
	      }
	      int m, n, k;
	      N = 0;
	      ws << 0;	// just pass 0 at the start of fifo to select later a better median size
				// for each window pass the sizes greater than 0 to fifo ws (window sizes). Size 0 means no size - no hole
	      loop4:for (m = row; m < row+50; m++)
	      {
	      	#pragma HLS LOOP_TRIPCOUNT min=50 max=50
	      	loop5:for (n = col ; n < col+50; n++)
	        {
			      #pragma HLS LOOP_TRIPCOUNT min=50 max=50
			      #pragma HLS PIPELINE
						// always be careful with the boundaries of the windows to avoid wrong comparisons.
		      	if ( (m==row) && (n==col) )	// if we are at the very first pixel of the window
	         	{
	          	if (SI[m][n]!=0){	// we check it individually if it has a size, because the previous and above pixels do not belong to the same window or do not exist
								ws <<  SI[m][n];
	              N++;
	         		}
	         	}
	          else if ( (m!=row) && (n==col) )	// pixels at first column of window except of the very first one
	         	{
	          	if ( (SI[m][n]!=0) && (SI[m][n]!=SI[m-1][n]) ){ // if the current pixel has a size and it is different than the above (the previous exceeds limits)
	            	ws <<   SI[m][n];
	              N++;
	         		}
	         	}
	          else if ( (m==row) && (n!=col) ) // pixels at first row of window except of the very first one
	         	{
	          	if ( (SI[m][n]!=0) && (SI[m][n]!=SI[m][n-1]) ){	// if the current pixel has a size and it is different than the previous (the above exceeds limits)
	            	ws <<   SI[m][n];
	              N++;
	         		}
	         	}
	          else if ( (SI[m][n]!=0) &&		// if we are at some pixel rather than these at first row and first column then we can check if it has a size and it is different from both previous and above pixels (no limits exceeded)
	             			(SI[m][n]!=SI[m][n-1]) &&
	         					(SI[m][n]!=SI[m-1][n]) )
	         	{
	          	ws <<   SI[m][n];
	            N++;
	         	}
	        }
	      }
				// Beacuse we always pass 200 labels to fifo ws, each window is going to have a number of sizes that will probably be less than 200. So, we have to set to 0 the values from the position of the last valid size of each window (N) until position 200
	      for (int y = N;y<lab_nums-1;y++)
				{
					#pragma HLS LOOP_TRIPCOUNT min=1 max=200
				  #pragma HLS PIPELINE
	      	ws <<  0;
	      }

	      if (N>0){	// if at least a size with value different than 0 exists in the window, start window processing
		    	windows (ws, global_median, row, col, SI, sizes, results);
	      }
			}
		}
		//pass results to outputImage
		for(int m=0; m<MAX_HEIGHT; m++)
			for(int n=0; n<MAX_WIDTH; n++){
				#pragma HLS PIPELINE
				outputImage<<results[m][n];
			}


}


void windows (my_data_fifo& window,
		my_float global_median,
		uint16_t row,
		uint16_t col,
		my_float SI [MAX_HEIGHT][MAX_WIDTH],
		my_float sizes [MAX_HEIGHT][MAX_WIDTH],
		my_float holes [MAX_HEIGHT][MAX_WIDTH]
		)
{
	#pragma HLS INLINE OFF
	my_float  even[lab_nums];
	my_float window_sizes[lab_nums] ;
	#pragma HLS array_partition variable=even cyclic factor=200
	#pragma HLS array_partition variable=window_sizes cyclic factor=200

	int N;
	int s, s1, s2;


	// take the sizes for each window
	loop1: for (int y = 0;y<lab_nums;y++)
	{
		#pragma HLS PIPELINE
		window >>  window_sizes[y];
	}
	// sort the data
	local_sort (window_sizes, even, &N);

	my_float window_median, local_median;
	int e = 0, pos = 0;
	window_median = window_sizes[N/2];
	// perform the same code as in Matlab
	loop2:while ( (e < N) && ( ( window_sizes[e]< window_median/2 ) || (window_sizes[e]<=2) ) )
	{
		#pragma HLS LOOP_TRIPCOUNT min=1 max=200
		e++;
	}
	int error = 0; int start = e;

	loop3:while ( (e < N) && (error == 0) )
	{
		#pragma HLS LOOP_TRIPCOUNT min=1 max=200
		local_median = window_sizes[(start+e)/2];
		// check for faulty values inside window_sizes
	 	if ( (window_sizes[e] > local_median * 2) || (window_sizes[e] > global_median* 4) )
	 	{
			pos = e;
		 	error = 1;
	 	}else if (e < N-1)
	 	{
			if ( window_sizes[e] + local_median < window_sizes[e+1] )
	 		{
				pos = e + 1;
	 	    error = 1;
	 	  }
	 	}
	 	e++;
	}

	if (error == 1)	// for all faulty values
	{
		loop4:for (int t = pos; t<N; t++)
	 	{
	 		#pragma HLS LOOP_TRIPCOUNT min=1 max=200
			#pragma HLS PIPELINE
		 	s = window_sizes[t];	// for each faulty size, s, calculate a unique division number and a unique modulo number, so that they form a unique position at array sizes
		 	s1 = s/MAX_WIDTH;	// s1 will not exceed MAX_HEIGHT
		 	s2 = s%MAX_WIDTH;	// s2 will not exceed MAX_WIDTH
		 	sizes[s1][s2] = -1;	// mark that position with -1 to declare a faulty value. Note that if two different windows have a same faulty size they will indicate the same position at sizes, so we do not even need to initialize array sizes more than once
	 	}
		// take the size, s, for every position of the selected window and mark the respective position on array holes with the value of sizes at position [s1][s2]
	 	loop5:for(int m=0; m<50; m++){
		 	loop6:for(int n=0; n<50; n++){
				#pragma HLS PIPELINE
				s = SI[row+m][col+n];
				s1 = s/MAX_WIDTH;
				s2 = s%MAX_WIDTH;
				holes[row+m][col+n] = sizes[s1][s2];	// row and col are the start variables of x and y coordinates respectively, so by moving for 50 places on x and y we take the exact locations of the selected window
	 	  }
		}
	}

}
