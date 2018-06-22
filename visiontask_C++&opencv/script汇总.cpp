//定义是否保存图片
#define saveImages 1
//定义是否记录视频
#define recordVideo 1

// 加载OpenCV API
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/video/video.hpp>

//加载PYLON API.
#include <pylon/PylonIncludes.h>

#include<iostream>

#ifdef PYLON_WIN_BUILD
#include <pylon/PylonGUI.h>    
#endif

//命名空间.
using namespace Pylon;
using namespace cv;
using namespace std;
//定义抓取的图像数
static const uint32_t c_countOfImagesToGrab = 20;



void main()
{
	 Mat imgThreshold;
	 Mat canny_output;
	 RNG rng(1234);
	 String string1;
	 double g_dConAreaRed=0;
	 double g_dConAreaBlue=0;
	 double g_dConAreaBlack=0;
	 vector<vector<Point> > contours;
     vector<Vec4i> hierarchy;
    //Pylon自动初始化和终止
    Pylon::PylonAutoInitTerm autoInitTerm;
    try
    {
        //创建相机对象（以最先识别的相机）
        CInstantCamera camera(CTlFactory::GetInstance().CreateFirstDevice());
        // 打印相机的名称
        std::cout << "Using device " << camera.GetDeviceInfo().GetModelName() << endl;
        //获取相机节点映射以获得相机参数
        GenApi::INodeMap& nodemap = camera.GetNodeMap();
        //打开相机
        camera.Open();
        //获取相机成像宽度和高度
        GenApi::CIntegerPtr width = nodemap.GetNode("Width");
        GenApi::CIntegerPtr height = nodemap.GetNode("Height");

        //设置相机最大缓冲区,默认为10
        camera.MaxNumBuffer = 5;
        // 新建pylon ImageFormatConverter对象.
        CImageFormatConverter formatConverter;
        //确定输出像素格式
        formatConverter.OutputPixelFormat = PixelType_BGR8packed;
        // 创建一个Pylonlmage后续将用来创建OpenCV images
        CPylonImage pylonImage;

        //声明一个整形变量用来计数抓取的图像，以及创建文件名索引
        int grabbedlmages = 0;

        // 新建一个OpenCV video creator对象.
        VideoWriter cvVideoCreator;
        //新建一个OpenCV image对象.

        Mat openCvImage;
        // 视频文件名

        std::string videoFileName = "openCvVideo.avi";
        // 定义视频帧大小
        cv::Size frameSize = Size((int)width->GetValue(), (int)height->GetValue());

        //设置视频编码类型和帧率，有三种选择
        // 帧率必须小于等于相机成像帧率
        cvVideoCreator.open(videoFileName, CV_FOURCC('D', 'I', 'V','X'), 3, frameSize, true);
        //cvVideoCreator.open(videoFileName, CV_F0URCC('M','P',,4','2’), 20, frameSize, true);
        //cvVideoCreator.open(videoFileName, CV_FOURCC('M', '3', 'P', 'G'), 20, frameSize, true);


        // 开始抓取c_countOfImagesToGrab images.
        //相机默认设置连续抓取模式
        camera.StartGrabbing(c_countOfImagesToGrab, GrabStrategy_LatestImageOnly);

        //抓取结果数据指针
        CGrabResultPtr ptrGrabResult;

        // 当c_countOfImagesToGrab images获取恢复成功时，Camera.StopGrabbing() 
        //被RetrieveResult()方法自动调用停止抓取
    
        while (camera.IsGrabbing())

        {
            // 等待接收和恢复图像，超时时间设置为5000 ms.
            camera.RetrieveResult(5000, ptrGrabResult, TimeoutHandling_ThrowException);

            //如果图像抓取成功
            if (ptrGrabResult->GrabSucceeded())
            {
                // 获取图像数据
                cout <<"SizeX: "<<ptrGrabResult->GetWidth()<<endl;
                cout <<"SizeY: "<<ptrGrabResult->GetHeight()<<endl;

                //将抓取的缓冲数据转化成pylon image.
                formatConverter.Convert(pylonImage, ptrGrabResult);

                // 将 pylon image转成OpenCV image.
                openCvImage = cv::Mat(ptrGrabResult->GetHeight(), ptrGrabResult->GetWidth(), CV_8UC3, (uint8_t *) pylonImage.GetBuffer());



 //提取红色（8位图）
	 inRange(openCvImage,Scalar(5,5,60),Scalar(80,70,110),imgThreshold); 
	 //开操作 (去除一些噪点)  
     Mat element = getStructuringElement(MORPH_RECT, Size(7, 7));  
     morphologyEx(imgThreshold, imgThreshold, MORPH_OPEN, element);  
     //闭操作 (连接一些连通域)  
     morphologyEx(imgThreshold, imgThreshold, MORPH_CLOSE, element);
     blur( imgThreshold, imgThreshold, Size(3,3) );
     // 用Canny算子检测边缘
     Canny( imgThreshold, canny_output,3, 9, 3 );
     // 寻找轮廓
     findContours( canny_output, contours, hierarchy, CV_RETR_EXTERNAL, CV_CHAIN_APPROX_SIMPLE, Point(0, 0) );
     // 绘出轮廓
     Mat drawing = Mat::zeros( canny_output.size(), CV_8UC3 );
	 for( int i = 0; i< contours.size(); i++ )
       {
         Scalar color = Scalar( rng.uniform(0, 255), rng.uniform(0,255), rng.uniform(0,255) );
         drawContours( drawing, contours, i,color, 3,8, hierarchy, 0, Point() );
       }
      //计算轮廓的面积  
     for (int i = 0; i < (int)contours.size(); i++)  
       {  
          g_dConAreaRed = contourArea(contours[i],false);  
          cout << "【第" << i << "个红色轮廓的面积为：】" << g_dConAreaRed << endl;  
       }
	 if(g_dConAreaRed>10000)
	 { 
		 string1="Red";
		 cout << string1 << endl;  
	 }


	 //提取蓝色（8位图）
	 inRange(openCvImage,Scalar(90,0,0),Scalar(150,70,30),imgThreshold);
	 //开操作 (去除一些噪点)  
     morphologyEx(imgThreshold, imgThreshold, MORPH_OPEN, element);  
     //闭操作 (连接一些连通域)  
     morphologyEx(imgThreshold, imgThreshold, MORPH_CLOSE, element);
     blur( imgThreshold, imgThreshold, Size(3,3) );
     // 用Canny算子检测边缘
     Canny( imgThreshold, canny_output,3, 9, 3 );
     // 寻找轮廓
     findContours( canny_output, contours, hierarchy, CV_RETR_EXTERNAL, CV_CHAIN_APPROX_SIMPLE, Point(0, 0) );
     // 绘出轮廓
	 for( int i = 0; i< contours.size(); i++ )
       {
         Scalar color = Scalar( rng.uniform(0, 255), rng.uniform(0,255), rng.uniform(0,255) );
         drawContours( drawing, contours, i,color, 3,8, hierarchy, 0, Point() );
       }
      //计算轮廓的面积  
     for (int i = 0; i < (int)contours.size(); i++)  
       {  
          g_dConAreaBlue = contourArea(contours[i],false);  
          cout << "【第" << i << "个蓝色轮廓的面积为：】" << g_dConAreaBlue << endl;  
       }
	 if(g_dConAreaBlue>10000)
	 {
		 string1="Blue";
	     cout << string1 << endl; 
	 }
	 //提取黑色（8位图）
	 inRange(openCvImage,Scalar(10,10,0),Scalar(70,70,80),imgThreshold);
	 //开操作 (去除一些噪点)  
	 morphologyEx(imgThreshold, imgThreshold, MORPH_OPEN, element);  
     //闭操作 (连接一些连通域)  
     morphologyEx(imgThreshold, imgThreshold, MORPH_CLOSE, element);
     blur( imgThreshold, imgThreshold, Size(3,3) );
     // 用Canny算子检测边缘
     Canny( imgThreshold, canny_output,3, 9, 3 );
     // 寻找轮廓
     findContours( canny_output, contours, hierarchy, CV_RETR_EXTERNAL, CV_CHAIN_APPROX_SIMPLE, Point(0, 0) );
     // 绘出轮廓
	 for( int i = 0; i< contours.size(); i++ )
       {
         Scalar color = Scalar( rng.uniform(0, 255), rng.uniform(0,255), rng.uniform(0,255) );
         drawContours( drawing, contours, i,color, 3,8, hierarchy, 0, Point() );
       }
      //计算轮廓的面积  
     for (int i = 0; i < (int)contours.size(); i++)  
       {  
          g_dConAreaBlack = contourArea(contours[i],false);  
          cout << "【第" << i << "个黑色轮廓的面积为：】" << g_dConAreaBlack << endl;  
       }
	 if(g_dConAreaBlack>10000)
     {
		 string1="Black";	
		 cout << string1 << endl; 
	 }
      // 在窗体中显示结果
     namedWindow( "【结果图】", CV_WINDOW_AUTOSIZE );
     imshow( "【结果图】", drawing );
	 char key = (char) waitKey(3);  
     if(key == 27)  
	 break;  


                //如果需要保存图片
                if (saveImages)
                {
                   std::ostringstream s;
                    // 按索引定义文件名存储图片
                   s << "image_" << grabbedlmages << ".jpg";
                   std::string imageName(s.str());
                    //保存OpenCV image.
                   imwrite(imageName, openCvImage);
                   grabbedlmages++;
                }

                //如果需要记录视频
                if (recordVideo)
                {
            
                    cvVideoCreator.write(openCvImage);
                }

                //新建OpenCV display window.
                namedWindow("OpenCV Display Window", CV_WINDOW_NORMAL); // other options: CV_AUTOSIZE, CV_FREERATIO
                //显示及时影像.
                imshow("OpenCV Display Window", openCvImage);

                // Define a timeout for customer's input in
                // '0' means indefinite, i.e. the next image will be displayed after closing the window.
                // '1' means live stream
                waitKey(30);

            }

        }            

    }
    catch (GenICam::GenericException &e)
    {
        // Error handling.
        cerr << "An exception occurred." << endl
            << e.GetDescription() << endl;
    }
    return;
}