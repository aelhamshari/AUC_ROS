#!/usr/bin/env python

import rospy
from afnan.msg import complex

def complex_callback(complex_message):
    rospy.loginfo("new complex number recieved: %d + %d i", complex_message.real,complex_message.imaginary)

rospy.init_node('complex_node2', anonymous=True)
rospy.Subscriber("complex_topic", complex, complex_callback)

rospy.spin()