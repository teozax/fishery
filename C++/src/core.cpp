#include "core.h"

void net_holes_detection(my_AXI_STREAM& INPUT_STREAM, my_AXI_STREAM& OUTPUT_STREAM)
{
	//Create AXI streaming interfaces for the core
	#pragma HLS INTERFACE s_axilite port=return     bundle=CONTROL_BUS
	#pragma HLS INTERFACE axis port=INPUT_STREAM
	#pragma HLS INTERFACE axis port=OUTPUT_STREAM

	 static my_data_fifo out, ONES, I, I_COPY,I_2, Luminance_img, LI,  help, help1;

	 RGB_IMAGE   img_0 (MAX_HEIGHT, MAX_WIDTH);
	 GRAY_IMAGE  I_enhanced (MAX_HEIGHT, MAX_WIDTH);
	 GRAY_IMAGE  Background (MAX_HEIGHT, MAX_WIDTH) ;
	 GRAY_IMAGE  Background1 (MAX_HEIGHT, MAX_WIDTH) ;
	 GRAY_IMAGE  Background2 (MAX_HEIGHT, MAX_WIDTH) ;
	 GRAY_IMAGE  Background3 (MAX_HEIGHT, MAX_WIDTH) ;
	 GRAY_IMAGE  Background4 (MAX_HEIGHT, MAX_WIDTH) ;
	 GRAY_IMAGE  Background5 (MAX_HEIGHT, MAX_WIDTH) ;
	 GRAY_IMAGE  Background6 (MAX_HEIGHT, MAX_WIDTH) ;
	 GRAY_IMAGE  Background7 (MAX_HEIGHT, MAX_WIDTH) ;
	 GRAY_IMAGE  Background8 (MAX_HEIGHT, MAX_WIDTH) ;
	 GRAY_IMAGE  I_enh1 (MAX_HEIGHT, MAX_WIDTH);
	 GRAY_IMAGE  I_enh2 (MAX_HEIGHT, MAX_WIDTH);
	 GRAY_IMAGE  img_1 (MAX_HEIGHT, MAX_WIDTH);
	 GRAY_IMAGE  img_2 (MAX_HEIGHT, MAX_WIDTH);
	 GRAY_IMAGE  Gabor_Out (MAX_HEIGHT, MAX_WIDTH);
	 GRAY_IMAGE  img_3 (MAX_HEIGHT, MAX_WIDTH);
	 GRAY_IMAGE  img_4 (MAX_HEIGHT, MAX_WIDTH);
	 GRAY_IMAGE  img_5 (MAX_HEIGHT, MAX_WIDTH);
	 GRAY_IMAGE  img_6 (MAX_HEIGHT, MAX_WIDTH);
	 GRAY_IMAGE  img_7 (MAX_HEIGHT, MAX_WIDTH);
	 GRAY_IMAGE  img_8 (MAX_HEIGHT, MAX_WIDTH);
	 GRAY_IMAGE  img_9 (MAX_HEIGHT, MAX_WIDTH);
	 GRAY_IMAGE  img_10 (MAX_HEIGHT, MAX_WIDTH);
	 GRAY_IMAGE  img_11 (MAX_HEIGHT, MAX_WIDTH);
	 RGB_IMAGE   img_12 (MAX_HEIGHT, MAX_WIDTH);

	// simple threshold and adaptive_threshold respectively
	my_float thres = 0.05, thres1 = 1.2;
	uint16_t max_value = 0, min_value = 0;
	// useless variables, but necessary parameters for function MinMaxLoc
	hls::Point_<int> min_loc, max_loc;
	// structuring element
	hls::Window<WINDOW_HEIGHT, WINDOW_WIDTH, uint16_t> disk;

	#pragma HLS DATAFLOW
	 hls::AXIvideo2Mat(INPUT_STREAM, img_0);

	 ex_enhancement( img_0, I_enhanced );
	 hls::Duplicate(I_enhanced, I_enh1, I_enh2);

	 strel (&disk);
	 hls::Erode<0,1>(I_enh1, img_1, disk);
	 hls::Dilate<0,1>(img_1, Background, disk);
	 hls::AddWeighted(I_enh2, 1, Background, -1, 0, img_2);

	 hls::Duplicate(img_2, img_3, img_4);
	 hls::Duplicate(img_3, img_8, img_9);
	 hls::Duplicate(img_4, img_10, img_11);

	 hls::MinMaxLoc( img_10, &min_value, &max_value, min_loc, max_loc );
	 mat2gray (img_8, img_5, min_value,  max_value);
	 mean_filter_2D (img_5, img_6);
	 adaptive_threshold (img_9, img_6, help, thres1);

	 threshold (img_11, Luminance_img, thres);
	 CCL(Luminance_img, LI);

	 AXIstream2Mat (LI, help, img_12);

	 hls::Mat2AXIvideo(img_12, OUTPUT_STREAM);

}
