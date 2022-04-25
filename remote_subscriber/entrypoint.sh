#!/bin/bash
set -e

# setup ros environment
source /opt/ros/${ROS_DISTRO}/setup.bash
source /usr/src/catkin_ws/devel/setup.bash

# Python node config
export ROS_PYTHON_LOG_CONFIG_FILE=/usr/src/python_logging.conf

exec "$@"

