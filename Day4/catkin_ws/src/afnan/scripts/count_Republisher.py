#!/usr/bin/env python
import rospy
from std_msgs.msg import Int32


def callback(data):
    rospy.loginfo(rospy.get_caller_id() + " I heard %d", data.data)
    
def listener():

    rospy.init_node('node3py', anonymous=True)

    rospy.Subscriber('Republish', Int32, callback)
    rospy.spin()

if __name__ == '__main__':
    listener()