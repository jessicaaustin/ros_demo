#!/bin/bash
set -e

# setup ros environment
source /opt/ros/${ROS_DISTRO}/setup.bash
source /usr/src/catkin_ws/devel/setup.bash

# C++ node and console config
export ROSCONSOLE_CONFIG_FILE=/usr/src/rosconsole.config
export ROSCONSOLE_FORMAT="[\${severity}] [\${time}] [\${node}] [\${function}:\${line}]: \${message}"

exec "$@"

