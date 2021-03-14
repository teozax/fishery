#include "core.h"

// perform 2D filtering
void mean_filter_2D(GRAY_IMAGE& img_in, GRAY_IMAGE& img_out)
{
	hls::Point_<int> anchor;
	anchor.x = -1;
	anchor.y = -1;

	const uint16_t coef_v[FILTER_HEIGHT][FILTER_WIDTH]= {
	  {1,1,1,1,1,1,1,1,1},
	  {1,1,1,1,1,1,1,1,1},
	  {1,1,1,1,1,1,1,1,1},
	  {1,1,1,1,1,1,1,1,1},
	  {1,1,1,1,1,1,1,1,1},
	  {1,1,1,1,1,1,1,1,1},
	  {1,1,1,1,1,1,1,1,1},
	  {1,1,1,1,1,1,1,1,1},
	  {1,1,1,1,1,1,1,1,1}
	};

	hls::Window<FILTER_HEIGHT, FILTER_WIDTH, uint16_t> mask;
	for (int r=0; r<FILTER_HEIGHT; r++)
		for (int c=0; c<FILTER_WIDTH; c++)
		{
			#pragma HLS PIPELINE
			mask.val[r][c] = coef_v[r][c];
		}

	hls::Filter2D <hls::BORDER_CONSTANT> (img_in, img_out, mask, anchor);

}

// make the structuring element
void strel (hls::Window<WINDOW_HEIGHT, WINDOW_WIDTH, uint16_t> *disk)
{

	const uint16_t coef_v[WINDOW_HEIGHT][WINDOW_WIDTH]= {
	  {0,0,1,1,1,1,1,0,0},
	  {0,1,1,1,1,1,1,1,0},
	  {1,1,1,1,1,1,1,1,1},
	  {1,1,1,1,1,1,1,1,1},
	  {1,1,1,1,1,1,1,1,1},
	  {1,1,1,1,1,1,1,1,1},
	  {1,1,1,1,1,1,1,1,1},
	  {0,1,1,1,1,1,1,1,0},
	  {0,0,1,1,1,1,1,0,0}
	};


	for (int r=0; r<WINDOW_HEIGHT; r++)
		for (int c=0; c<WINDOW_WIDTH; c++)
		{
			#pragma HLS PIPELINE
			disk->val[r][c] = coef_v[r][c];
		}

}

// take the nets and put them into blue component, and holes into red component
void AXIstream2Mat (my_data_fifo&  my_fifo, my_data_fifo&  my_fifo1, RGB_IMAGE& my_image)
{
	my_float f, f1;
	RGB_PIXEL pixel;
	for (int i = 0; i < MAX_HEIGHT; i++)
		for (int j = 0; j < MAX_WIDTH; j++)
		{
			#pragma HLS PIPELINE
				my_fifo>>f;
				my_fifo1>>f1;
				// blue component
				pixel.val[0] = (f1==1) ? 255 : 0;
				// green component
				pixel.val[1] = 0;
				// red component
				pixel.val[2] = (f==-1) ? 255 : 0;
				my_image<<pixel;
		}
}


// this function is needed before 2D filtering according to Matlab code
void mat2gray (GRAY_IMAGE& M,  GRAY_IMAGE& I, uint16_t min_value, uint16_t max_value)
{
	my_float i, max, min, m ;
	GRAY_PIXEL pixel, pixel1;

	 max=max_value;
	 min=min_value;

	for (my_int x=0; x<MAX_HEIGHT; x++)
	{	for (my_int y=0; y<MAX_WIDTH; y++)
    	{
				#pragma HLS PIPELINE
				M>>pixel;
				m = pixel.val[0];
				if ( (m >= min) && (m < max) )
					i = ( ((m - min) / (max - min))  );
				else
					i = 1;
				i = i * 100;
				pixel1.val[0] = i;
				I<<pixel1;
	     }
	}
}

// This is the respective function of Matlab
void adaptive_threshold (GRAY_IMAGE& IN, GRAY_IMAGE& IN1, my_data_fifo& Luminance_img, my_float C)
{
	my_float pix, pix1, pix2;
	GRAY_PIXEL pixel, pixel1;
	for (my_int x=0; x<MAX_HEIGHT; x++)
	{	for (my_int y=0; y<MAX_WIDTH; y++)
    {
				#pragma HLS PIPELINE
	    		IN>>pixel;
	    		IN1>>pixel1;
	    		pix = pixel.val[0];
					// reverse this value because they have been multiplicated with 10 at the end of guided filter (compute_I_enhanced)
	    		pix = pix / 10;
	    		pix1 = pixel1.val[0];
					// reverse this value because it was multiplicted with 10 at compute_I_enhanced and also with 100 at mat2gray
	    		pix1 = pix1 / 1000;
	    		pix2 = pix1 - pix - C;
	    		pix2 = (pix2<=0) ? 1 : 0;
	    		Luminance_img<<pix2;
    }
	}
}

void threshold (GRAY_IMAGE& IN, my_data_fifo& Luminance_img, my_float thres)
{
	my_float pix;
	GRAY_PIXEL pixel;
	for (my_int x=0; x<MAX_HEIGHT; x++)
	{	for (my_int y=0; y<MAX_WIDTH; y++)
    	{
			#pragma HLS PIPELINE
    		IN>>pixel;
    		pix = pixel.val[0];
				// reverse this value because they have been multiplicated with 10 at the end of guided filter (compute_I_enhanced)
    		pix = pix / 10;
    		pix = (pix<=thres) ? 1 : 0;
    		Luminance_img<<pix;
    	}
	}

}

void local_sort (my_float work_array [lab_nums], my_float even [lab_nums], int *data_size)
{
#pragma HLS INLINE off
	const int N = lab_nums;

	 loop60:for (int i = 0; i<lab_nums; i++)
	 {
		#pragma HLS UNROLL factor=10
		even[i] = 0;
	 }

	 // Sort the data
	 	bool sorting_completed = false;

	 	sort_loop: while (!sorting_completed)
	 	{
	 	#pragma HLS LOOP_TRIPCOUNT min=1 max=100
		#pragma HLS PIPELINE
	 		// even line of comparators
	 		sorting_completed = true;
	 		sort_even: for (int i = 0; i < (N / 2); i++)
	 		{
	 			if (work_array[2 * i] > work_array[2 * i + 1])
	 			{ 	sorting_completed = false;
	 				even[2 * i]= work_array[2 * i + 1];
	 				even[2 * i + 1] = work_array[2 * i];
	 			}
	 			else
	 			{ 	even[2 * i] = work_array[2 * i];
	 				even[2 * i + 1] = work_array[2 * i + 1];
	 			}
	 		}
	 		// odd line of comparators
	 		sort_odd: for (int j = 0; j < (N / 2 - 1); j++)
	 		{
	 			if (even[2 * j + 1] > even[2 * j + 2])
	 			{	sorting_completed = false;
	 				work_array[2 * j + 1] = even[2 * j + 2];
	 				work_array[2 * j + 2] = even[2 * j + 1];
	 			}
	 			else
	 			{ 	work_array[2 * j + 1]= even[2 * j + 1];
	 				work_array[2 * j + 2]= even[2 * j + 2];
	 			}
	 		}
	 		work_array[0] = even[0];
	 		work_array[N-1] = even[N-1];
	 	}

    int prev=0;
    loop9: for (int v = 0;v<N;v++)
    {
		#pragma HLS PIPELINE
    	if (work_array[v] != work_array[prev] )
    	{
    		work_array[++prev] = work_array[v];
    	}
    }

	*data_size = prev+1;
}
