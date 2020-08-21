#!/usr/bin/env python

from afnan.srv import wordcount, wordcountRequest, wordcountResponse
import rospy

def handle_count_word(req):
    print("Returning the number of words in %s"%req.mystring)
    return wordcountResponse(len(req.mystring.split()))

def count_word_server():
    rospy.init_node('count_word_server')
    s = rospy.Service('count_word', wordcount, handle_count_word)
    print("Ready to count the words")
    rospy.spin()

if __name__ == "__main__":
    count_word_server()