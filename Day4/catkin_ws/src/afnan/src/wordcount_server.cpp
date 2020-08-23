#include "ros/ros.h"
#include "afnan/wordcount.h"
#include "std_msgs/String.h"
#include "std_msgs/Int64.h"
#include <string>
#include <iostream>

bool count(afnan::wordcount::Request  &req,
         afnan::wordcount::Response &res)
{
  res.count = 0;
  int i = 0;
  while (i != req.mystring.length())
  {
      if (req.mystring[i] == ' ')
        res.count ++;
      i++;
  }
  res.count ++;

  ROS_INFO("request: number of words in %s", req.mystring);
  ROS_INFO("sending back response: %d", res.count);
  return true;
}


int main(int argc, char **argv)
{
  ros::init(argc, argv, "count_word_server");
  ros::NodeHandle n;

  ros::ServiceServer service = n.advertiseService("count_word", count);
  ROS_INFO("Ready to count");
  ros::spin();

  return 0;
}