# Quadcopter_SimulinkGAZEBO

## Contents
This repository contains simulation code to control a Quadcopter using ROS/Gazebo. This is done by sending ROS topics from Simulink, using blocks from blocks from from ROS toolbox. To control the drone following architecture of Simulink/Gazebo is implemented:
![image](https://user-images.githubusercontent.com/37011467/122595736-8164e400-d086-11eb-9aad-922a00a58af5.png)
                              Working architecture of the simulation model
![image](https://user-images.githubusercontent.com/37011467/122597428-f6391d80-d088-11eb-941d-35d94b3e75c0.png)
                                     Simulation Architecture simulink

For the moment, these models control the drone with ID 1, but you can change the topics of the Subscribe and Publish blocks to control another drone.
## Setting up the model
To connect Simulink with the ROS server, follow these steps:

1) In MATLAB, execute the rosinit function with the IP of the virtual machine
2) In Simulink, navigate to Tools > Robotics Operating System > Configure Network Addresses
3) In ROS Master, make sure Network Address is set to Default
4) In Node Host, make sure Network Address is set to Default
5) Test the connectivity using the Test button



## Dependencies
The simulation has been tested on the following dependencies:
1) ROS Kinetic 
2) GAZEBO 7 
3) Ubuntu 16.04.7 LTS (Xenial Xerus)
4) Vmware workstation 16 player
