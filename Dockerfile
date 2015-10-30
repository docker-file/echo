## @author     Dmitry Kolesnikov, <dmkolesnikov@gmail.com>
## @copyright  (c) 2014 Dmitry Kolesnikov. All Rights Reserved
##
## @description
##    
FROM centos
MAINTAINER Dmitry Kolesnikov <dmkolesnikov@gmail.com>

##
## install dependencies
RUN \
   yum -y install \
      nc

##
## install echo 
COPY run.sh /run.sh

EXPOSE 8888

CMD bash /run.sh

