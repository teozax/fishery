#include "core.h"

void ex_enhancement( RGB_IMAGE& inputImage, GRAY_IMAGE& I_enhanced )
{
	// radius of guidedfilter				// variable 'epsilon' of guidedfilter
	my_int r = 16;									my_float eps = 0.01;
	static my_data_fifo ONES, I, I_COPY, I_2;

	#pragma HLS DATAFLOW
	
	transform_data(inputImage, I, I_COPY, I_2, ONES);
	guidedfilter (I, I_COPY, r, eps, I_2, ONES, I_enhanced);
}

//first of all transform each pixel to range [0, 1], before continuing to calculations
void transform_data(RGB_IMAGE& inputImage,
							my_data_fifo& I,
							my_data_fifo& I_COPY,
							my_data_fifo& I_2,
							my_data_fifo& ONES)
{
	 	my_float i, i_2,ones = 1, my_i, i2, i1,mones;
		RGB_PIXEL rgb_pixel;

		for (int x=0; x<MAX_HEIGHT; x++)
	    {	for (int y=0; y<MAX_WIDTH; y++)
	    	{
				#pragma HLS PIPELINE
	    		inputImage>>rgb_pixel;
	    		i = rgb_pixel.val[2];
	    		i = i / 255;
	    		i_2 = i * i;
	    		I<< i;
	    		I_COPY<<i;
	    		I_2 << i_2;
	    		ONES<<ones;
		     }
		 }

}

// dataflow between its child functions
void guidedfilter(	my_data_fifo&  I,
										my_data_fifo&  I_COPY,
										my_int r,
										my_float eps,
										my_data_fifo& I_2,
										my_data_fifo& ONES,
										GRAY_IMAGE& I_enhanced
								 )
{
	static my_data_fifo mean_I, mean_II, N, a, b, mean_A, mean_B, N_COPY;
	#pragma HLS STREAM variable=mean_I  DEPTH = 1  dim=1
	#pragma HLS STREAM variable=mean_II  DEPTH = 1  dim=1
	#pragma HLS STREAM variable=N  DEPTH = 1  dim=1
	#pragma HLS STREAM variable=a  DEPTH = 1  dim=1
	#pragma HLS STREAM variable=b  DEPTH = 1  dim=1
	#pragma HLS STREAM variable=mean_A  DEPTH = 1  dim=1
	#pragma HLS STREAM variable=mean_B  DEPTH = 1  dim=1
	#pragma HLS STREAM variable=N_COPY  DEPTH = 1  dim=1

	#pragma HLS DATAFLOW

	boxfilter (ONES, r, N);
	boxfilter (I, r, mean_I);
	boxfilter (I_2, r, mean_II);

	compute_a_b (N, mean_I, mean_II, eps, a, b, N_COPY);

	 boxfilter (a, r, mean_A);
	 boxfilter (b, r, mean_B);

	 compute_I_enhanced (N_COPY, mean_A, mean_B, I_enhanced, I_COPY);

}
