#include <hls_opencv.h>
#include "../src\\core.h"

// make input and output images in path fishery_nets\solution1\csim\build\Data, based on folder 'Data' at the root of the project
#define INPUT_IMAGE "Data\\1.tif"
#define OUTPUT_IMAGE "Data\\2.tif"

int main (int argc, char** argv)
{
	my_AXI_STREAM frame_axi, dst_axi;

  IplImage* source = cvCreateImage(cvSize(MAX_WIDTH, MAX_HEIGHT), IPL_DEPTH_8U, 3);
  IplImage* destination = cvCreateImage(cvSize(MAX_WIDTH, MAX_HEIGHT), IPL_DEPTH_8U, 3);

  source = cvLoadImage(INPUT_IMAGE);

        // Convert OpenCV format to AXI4 Stream format
       IplImage2AXIvideo(source, frame_axi);
        // Call the function to be synthesized
       net_holes_detection(frame_axi, dst_axi);
        // Convert the AXI4 Stream data to OpenCV format
       AXIvideo2IplImage(dst_axi, destination);

       cvSaveImage(OUTPUT_IMAGE, destination);

//	cvReleaseImage(&source);
//	cvReleaseImage(&destination);

	return 0;
}
