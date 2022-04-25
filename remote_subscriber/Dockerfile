ARG ROS_RELEASE=melodic
ARG UBUNTU_RELEASE=bionic
FROM ros:${ROS_RELEASE}-ros-base-${UBUNTU_RELEASE}

WORKDIR /usr/src/catkin_ws

COPY entrypoint.sh /usr/src

COPY src/beginner_tutorials /usr/src/catkin_ws/src/beginner_tutorials
RUN /bin/bash -c 'source /opt/ros/${ROS_DISTRO}/setup.bash && catkin_make'

ENTRYPOINT ["/usr/src/entrypoint.sh"]
CMD ["rosrun", "beginner_tutorials", "chatter_listener"]

