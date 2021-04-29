FROM ubuntu:latest
 
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get install -y gimx

CMD gimx -p $gimxport -c $gimxconfig --nograb
