FROM ubuntu:18.04

#install dependencies
RUN     ls
RUN     apt-get update --fix-missing
RUN     apt-get install -y meson 
RUN     apt-get install -y iputils-ping
RUN     apt-get install -y libpqxx-dev 
RUN     apt-get install -y libcpprest-dev 
RUN     apt-get install -y libppl-dev 
RUN     apt-get install -y libcurlpp-dev 
RUN     apt-get install -y libcurl4-gnutls-dev 
RUN     apt-get install -y libhiredis-dev
RUN     apt-get install -y libevent-dev
RUN     apt-get install -y cmake
#RUN     apt-get update --fix-missing
RUN     apt-get install -y git
#set time for skipping script during postgresql installation 
RUN     echo "Europe/Dublin" > /etc/timezone &&\
        apt-get download tzdata &&\
        dpkg --unpack tzdata*.deb &&\
        rm /var/lib/dpkg/info/tzdata.postinst -f &&\
        dpkg --configure tzdata &&\
        dpkg-reconfigure -f noninteractive tzdata &&\
        apt-get install -yf
RUN     apt-get install -y postgresql
#install yaml-cpp from source
RUN     git clone https://github.com/jbeder/yaml-cpp.git  &&\
     cd yaml-cpp/ &&\
     mkdir build &&\
     cd build/ &&\
     ls /home &&\
     cmake .. &&\
     make &&\
     make install
RUN rm -rf yaml-cpp

#build data grabber
RUN mkdir grabber
COPY *.cc /grabber/
COPY *.hh /grabber/
COPY DB.sql /
COPY Candles.sql /
COPY meson.build /grabber/
RUN \
    cd grabber &&\
    meson build &&\
    cd build &&\
    ninja -j 1

#remove unnecessary packages
RUN     apt-get remove -y meson 
RUN     apt-get remove -y iputils-ping
RUN     apt-get remove -y cmake  
RUN     apt-get remove -y git

RUN mkdir /etc/data_grabber
RUN ls /etc/

ENV network host
RUN     apt-get install -y iputils-ping 
RUN     apt-get install -y iproute2
RUN     apt-get install -y vim
COPY config.yml /etc/data_grabber/

CMD bash
#run data grabber
#CMD ["./grabber/build/dataGrabber"]
