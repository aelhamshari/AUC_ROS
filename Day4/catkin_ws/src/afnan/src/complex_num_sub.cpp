#include "ros/ros.h"
#include "afnan/complex.h"

void Callback(const afnan::complex::ConstPtr& msg)
{
  ROS_INFO("New complex number recieved: %d + %d i", msg->real, msg->imaginary);
}


int main(int argc, char** argv)
{
    
    ros::init(argc,argv, "complex_sub");

    ros::NodeHandle nh;

    ros::Subscriber sub = nh.subscribe("complextopic", 1000,Callback);
    ros::spin();
    return 0;
}