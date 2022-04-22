
Set up for either melodic or noetic:
```
# melodic/bionic
export ROS_RELEASE=melodic
export UBUNTU_RELEASE=bionic

# noetic/focal
export ROS_RELEASE=noetic
export UBUNTU_RELEASE=focal
```

Build:
```
docker build \
    --build-arg ROS_RELEASE=$ROS_RELEASE \
    --build-arg UBUNTU_RELEASE=$UBUNTU_RELEASE \
  -t ros_demo:${ROS_RELEASE} .
```

Run:
```
# roscore
docker run --rm -it --net host ros:${ROS_RELEASE}-ros-base-${UBUNTU_RELEASE} \
    roscore

# this demo
docker run --rm -it --net host ros_demo:${ROS_RELEASE} \
   rosrun beginner_tutorials chatter_listener
```



