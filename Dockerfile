FROM debian:latest
 
RUN apt-get -y update
#RUN apt-get -y upgrade
RUN apt-get install -y wget

RUN wget https://github.com/matlo/GIMX/releases/download/v8.0/gimx_8.0-1_armhf.deb


CMD gimx -p $gimxport -c $gimxconfig --nograb
