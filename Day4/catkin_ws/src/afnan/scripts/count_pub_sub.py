#!/usr/bin/env python
import rospy
from std_msgs.msg import Int32

pub = rospy.Publisher('Republish', Int32, queue_size = 10)

def callback(data):
    rospy.loginfo("I heard %d", data.data)
    rospy.loginfo("I publish: %d", data.data)
    pub.publish(data.data)
    rate = rospy.Rate (1)
    rate.sleep()
    
def listener():

    rospy.init_node('node2py', anonymous=True)

    rospy.Subscriber('count', Int32, callback)
    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    listener()