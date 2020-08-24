#include "ros/ros.h"
#include "afnan/complex.h"
#include <math.h>

int main (int argc, char** argv)
{
    ros::init(argc, argv, "complex_pub");
    ros::NodeHandle nh;

    ros::Publisher pub = nh.advertise<afnan::complex>("complextopic", 1000);

    ros::Rate rate(1);

    while(ros::ok())
    {
        afnan::complex com_num;
        com_num.real = int (rand()/10000000);
        com_num.imaginary = int (rand()/10000000);
        ROS_INFO_STREAM(com_num);
        pub.publish(com_num);
        ros::spinOnce();
        rate.sleep();
    }

    return 0;
}