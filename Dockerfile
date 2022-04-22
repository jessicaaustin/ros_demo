FROM ros:melodic-ros-base-bionic

WORKDIR /usr/src/catkin_ws

COPY entrypoint.sh /usr/src
COPY rosconsole.config /usr/src

COPY src/beginner_tutorials /usr/src/catkin_ws/src/beginner_tutorials
RUN /bin/bash -c 'source /opt/ros/melodic/setup.bash && catkin_make'

ENTRYPOINT ["/usr/src/entrypoint.sh"]
CMD ["rosrun", "beginner_tutorials", "chatter_listener"]

