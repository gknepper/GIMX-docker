FROM debian:latest
 
RUN apt update -y
RUN apt install -y wget git
RUN wget https://github.com/matlo/GIMX/releases/download/v8.0/gimx_8.0-1_armhf.deb
RUN apt install -y ./gimx_8.0-1_armhf.deb

RUN git clone https://github.com/matlo/GIMX-configurations/tree/master/Linux

CMD gimx -p $gimxport -c $gimxconfig --nograb
