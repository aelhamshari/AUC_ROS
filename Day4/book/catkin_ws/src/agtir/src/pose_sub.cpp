#include "ros/ros.h"
#include "turtlesim/Pose.h"
#include <iomanip>

void call_back(const turtlesim::Pose& msg)
{
    ROS_INFO_STREAM(std::setprecision(2) << std::fixed << "Position = (" << msg.x << "," << msg.y << ")" << " direction =" << msg.theta);
}

int main(int argc, char** argv)
{
    ros::init(argc,argv, "subscribe_velocity");
    ros::NodeHandle nh;

    ros::Subscriber sub = nh.subscribe("turtle1/pose", 1000, &call_back);
    ros::spin();
}