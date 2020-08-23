#include "ros/ros.h"
#include "afnan/wordcount.h"
#include "std_msgs/String.h"
#include "std_msgs/Int64.h"
#include <cstdlib>
#include <string>
#include <iostream>

int main(int argc, char **argv)
{
  ros::init(argc, argv, "count_word_client");

  ros::NodeHandle n;
  ros::ServiceClient client = n.serviceClient<afnan::wordcount>("count_word");
  afnan::wordcount srv;
  std::string MyString = "";
  std::getline (std::cin,MyString);
  srv.request.mystring = MyString;
  std::cout << MyString << "\n";
  std::cout << srv.request.mystring << "\n";
  if (client.call(srv))
  {
    ROS_INFO("Number of words is %d", srv.response.count);
  }
  else
  {
    ROS_ERROR("Failed to call service count_word");
    return 1;
  }

  return 0;
}