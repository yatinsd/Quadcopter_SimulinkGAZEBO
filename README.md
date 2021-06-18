# Quadcopter_SimulinkGAZEBO

## Contents
This repository contains simulation code to control a Quadcopter using ROS/Gazebo. This is done by sending ROS topics from Simulink, using blocks from blocks from from ROS toolbox. To control the drone following architecture of Simulink/Gazebo is implemented:
![image](https://user-images.githubusercontent.com/37011467/122595736-8164e400-d086-11eb-9aad-922a00a58af5.png)
                                      
                                      Working architecture of the simulation model
![image](https://user-images.githubusercontent.com/37011467/122599110-6fd20b00-d08b-11eb-9bdf-a53271d75193.png)
                                                   
                                             Simulation Architecture simulink

For the moment, these models control the drone with ID 1, but you can change the topics of the Subscribe and Publish blocks to control another drone.
## Tested dependencies of the model
The simulation is tested to be working on the following dependencies:
1) ROS Kinetic
2) GAZEBO 7 
3) Ubuntu 16.04.7 LTS 
4) Vmware workstation 16 player(Hihgly recommeded for connection with MATLAB
# Installing dependencies
1) ROS Kinetic

        http://wiki.ros.org/kinetic/Installation/Ubuntu            
            
2) Gazebo 7

        sudo apt-get install gazebo7
3) UBUNTU 16.04.7 LTS

        https://releases.ubuntu.com/16.04/
              
4) Vmware workstation 16 player

        https://www.vmware.com/in/products/workstation-player.html


## Setting up the model
Quick install and run process(ROS side; Using Bash)
1) If not done make scripts executable: chmod +x setup.sh chmod +x run_gzb.sh chmod +x start_uav.sh

2) Run setup script (this should be done once for a fresh install without ROS or gazebo alreaded installed, in case of error run required commands by hand step by step) ./setup.sh

3) Start gazebo environment simulator and ROS server ./run_gzb.sh

4) Add a robot to the scene with default ID ./start_uav.sh

To connect Simulink with the ROS server, follow these steps:

1) In MATLAB, execute the rosinit function with the IP of the virtual machine
2) In Simulink, navigate to Tools > Robotics Operating System > Configure Network Addresses
3) In ROS Master, make sure Network Address is set to Default
4) In Node Host, make sure Network Address is set to Default
5) Test the connectivity using the Test button

## Testing plan of the code on 
When testing the code on a real drone make sure of the following:
1) Always tune the PID Values within less windy areas 
2) Redundancy in communication channels during initial tuning.
3) 

## Reasons behind your choice of tech stack
Matlab has its advantage of model-based design strategy which gives its quick turnaround time with a high level view of the model internal data giving the user access to deep understanding along with production quality code generation plugins for various types of embedded platforms and SOC. Also Matlab has various pre built libraries of many algorythms in robotics ready to deploy making prototyping a breeze.

## Planned upgrades on the stack 
The stack will be upgraded :
1) GPS Sensor for accurate estimations 
2) ROS2 in the coming week for the reasons below:
            a) Support real-time control: ROS2 also adds support for real-time control, which can improve the timeliness of control and the performance of the overall robot.
            b) Multi-platform support: ROS2 not only runs on Linux systems, but also adds support for Windows, MacOS, RTOS and other systems, giving developers more choices. 
3) UI for different controls bridging inputs and outputs of Gazebo and Matlab in one place.
4) Better input mechanism for different drone platforms.

## Notes 
1) If a model can control the drone but does not receive any data from the drone:
    a)  Make sure you have set the ROS_IP environment variable in the VM before running ROS
    b)  See if the port on VM is listening 
![image](https://user-images.githubusercontent.com/37011467/122598753-e1f62000-d08a-11eb-894b-cd233bbe00d8.png)
