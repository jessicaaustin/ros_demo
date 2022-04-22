
TODO add steps to build melodic or noetic

Build:
```
docker build -t ros_demo .
```

Run:
```
docker run --rm -it --net host ros:melodic-ros-base-bionic \
    roscore

docker run --rm -it --net host ros_demo \
   rosrun beginner_tutorials chatter_listener
```



