### ubuntu-dev-base Dockerfile
Docker base image for development

*  Install packages : 
  * sudo 
  * x11-apps

*  Add a sudoer user "dev"

### Usage

Run this image with the command : 

    docker run -it --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix arnaudhb/ubuntu-dev-base

### X11
Any application using X11 will be displayed on the X server host
- Try this with 'xclock' and the more fancy 'xeyes' command.
- Note : This will not work with root user, that's why another one has been created. 


### References:
http://fabiorehm.com/blog/2014/09/11/running-gui-apps-with-docker/

https://stackoverflow.com/questions/16296753/can-you-run-gui-apps-in-a-docker-container
