## ubuntu-dev-base

### Description
Docker base image for development

*  Installed packages : 
  * x11-apps

### Usage
*  Run this image with the command : 

    docker run -it --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix arnaudhb/ubuntu-dev-base

*  Ensure root user is allowed to connect to the X11 server of the host :
    
    xhost + si:localuser:root

### X11
Any application using X11 will be displayed on the X server host
- Try this with 'xclock' or the more fancy 'xeyes' command.


### References:
http://fabiorehm.com/blog/2014/09/11/running-gui-apps-with-docker/

https://stackoverflow.com/questions/16296753/can-you-run-gui-apps-in-a-docker-container
