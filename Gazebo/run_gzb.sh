cd ~/catkin_ws/src/quadcopter/urdf
export GAZEBO_PLUGIN_PATH=${GAZEBO_PLUGIN_PATH}:~/catkin_ws/src/quadcopter/plugins/build
roslaunch imav_2017 imav_indoor.launch
