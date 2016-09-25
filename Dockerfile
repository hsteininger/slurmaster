# hsteininger/slurmmaster
# VERSION 0.0.1

#what image to use
FROM debian

#maintainer
MAINTAINER Herbert Steininger <hsteininger@hsteininger.de>

#set env variables
env DEBIAN_FRONTEND noninteractive

#set timezone
RUN echo "TZ='Europe/Berlin'; export TZ" >> /root/.bashrc

#run aptitude
RUN apt-get update && apt-get -y --fix-missing upgrade

RUN apt-get install -y --fix-missing tar less vim wget lynx psmisc lsof slurm-llnl

ADD ./slurm.conf /etc/slurm-llnl/
ADD ./start.sh /root/bin/

#EXPOSE 6817
#EXPOSE 6818

#ENTRYPOINT /root/bin/start.sh
