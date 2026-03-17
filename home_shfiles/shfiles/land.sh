#!/bin/bash

# 进入脚本所在目录
cd "$(dirname "$0")"

# 加载ROS工作空间环境
source ../../devel/setup.bash

# 发送降落指令
rostopic pub -1 /px4ctrl/takeoff_land quadrotor_msgs/TakeoffLand "{takeoff_land_cmd: 2}"

echo "Land command sent."
