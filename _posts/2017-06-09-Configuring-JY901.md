---
title: Configuring JY901
date: 2017-06-09 12:00:00
---
## Source Code
The source code of this project can be obtained by navigating to the [Github repo](https://github.com/zurkiyeh/ConfiguringJY901)

## Synopsis

This project was implemented to wirelessly configure a set of gyroscopes of type JY901. In this application, JY901 sensors are mounted on a UAV to aid in navigation, however, configuring JY901s requires physically removing them and connecting them serially to a device, then sending the command through a UART connection. This method is not only impractical, but it can affect the life-time of the JY901s as delicate electronics are not made for constant switching on and off.

## Motivation

This application was developed for [Romaeris Corporation](https://www.linkedin.com/company/romaeris-corporation). Romaeris Corporation is a privately owned aerospace technology company headquartered in Ottawa, Canada. The company is developing unmanned aerial vehicles (UAVs) and aircraft telemetry and health monitoring systems. Romaeris integrated this API into their test model to help them expirement easily with various settings and configrations. 

## Contributers
This API was developed under the supervision of [Professor Wail Gueaieb](mailto:wgueaieb@uottawa.ca).


## Installation

Before using this API, JY901 sensors must be connected to a WIFI chip such as the [USR-C322](http://www.usriot.com/p/ti-cc3200-wifi-modules/). Which will allow it to wirelessly recieve data. The wireless chip will also allocate a specific IP address for every sensor, which allows for direct communication with individual sensors.

To install and use the API, clone the repo to a Raspberry pi, navigate to [directory](https://github.com/zurkiyeh/ConfiguringJY901/tree/master/build/bin) then run the executable JY by following these instructions:  
* To send a command, use the follwoing template ``` ./JY [IPAddress] [CommandName] [Parameter1] [Parameter2]```  
* [IPAddress] is the IP Address allocated to the sensor by the WIFI chip.  
* [CommandName] is obtained from the sensor [ user manual](https://github.com/zurkiyeh/ConfiguringJY901/blob/master/Documents/JY901%20User%20manual.pdf) , or from the help command explained below, Note that [CommandName] is case insensitive. 
* [Parameter1], [Parameter2] are the values shown in the data sheet. For example; for the Baud rate Command ```BAUD```, users can input 2400, 4800, 9600, 19200, 38400, 57600, 115200, 230400, 460800 , 921600.  
* For instructions that take only one parameter, [Parameter2] can be left empty.  
* You can show a list of all available instructions, which shows the command names (CommandName) by executing ``` ./JY 0 help```  


The API will shows a message indicating whether or not the command was sent successfully.

## Tests

For screenshots of how the API works, please refer to the [README in the project repository](https://github.com/zurkiyeh/ConfiguringJY901#tests)


## Detailed Description

This implementation employs object oriented programming in designing the API. Commands are objects that contain different attributes such as names, hex codes and many more. It also relies on UDP sockets in transmitting and recieving of data. Different classes handle different tasks; for example, the class UserInput hanldes input from users and redirects it to an apprropriate function. Similarly, classes sendToSocket and Command exchange information to achieve different tasks.
