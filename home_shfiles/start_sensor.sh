sudo chmod 777 /dev/ttyACM0 & sleep 2;
roslaunch mavros px4.launch & sleep 3;
rosrun mavros mavcmd long 511 105 5000 0 0 0 0 0 & sleep 1;
rosrun mavros mavcmd long 511 31 5000 0 0 0 0 0 & sleep 1;

cd mid360lio_ws;
source devel/setup.bash;
roslaunch livox_ros_driver2 msg_MID360.launch;

