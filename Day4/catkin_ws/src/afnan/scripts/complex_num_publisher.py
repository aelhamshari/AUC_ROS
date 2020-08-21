#!/usr/bin/env python

import rospy
from afnan.msg import complex
import random

pub = rospy.Publisher('complex_topic', complex, queue_size=10)

rospy.init_node('complex_node', anonymous=True)

rate = rospy.Rate(1)

while not rospy.is_shutdown():
    Com_num = complex()
    Com_num.real = int(10*random.random())
    Com_num.imaginary = int(10*random.random())
    rospy.loginfo(Com_num)
    pub.publish(Com_num)
    rate.sleep()