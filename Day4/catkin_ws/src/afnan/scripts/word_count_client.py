#!/usr/bin/env python

import sys
import rospy
from afnan.srv import wordcount, wordcountRequest, wordcountResponse

def count_word_client(mystring):
    rospy.wait_for_service('count_word')
    try:
        count_word = rospy.ServiceProxy('count_word', wordcount)
        resp1 = count_word(mystring)
        return resp1.count
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)

def usage():
    return "%s [Input a string]"%sys.argv[0]

if __name__ == "__main__":

    while not rospy.is_shutdown():
        mystring = raw_input ('Enter your string: ')
        print("Requesting number of words in %s"%(mystring))
        print("The number of words is %d"%(count_word_client(mystring)))
        print ("")
