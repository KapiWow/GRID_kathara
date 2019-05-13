FROM postgres

ENV POSTGRES_USER docker
ENV POSTGRES_PASSWORD docker
ENV POSTGRES_DB docker
RUN apt-get update --fix-missing
RUN apt-get install -y iproute2
RUN apt-get install -y iputils-ping
RUN apt-get install -y tcpdump
COPY init.sql /etc/data_grabber/
COPY init.sh /

