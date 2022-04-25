#!/usr/bin/env python

import rospy

from std_msgs.msg import String

def chatter_cb(data):
    rospy.logwarn(data)


if __name__ == '__main__':
    rospy.init_node('chatter_listener', anonymous=True)
    rospy.loginfo("Listening on /chatter ...")
    rospy.Subscriber("chatter", String, chatter_cb)
    rospy.spin()


