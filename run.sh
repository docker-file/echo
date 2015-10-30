#!/bin/bash
## @author     Dmitry Kolesnikov, <dmkolesnikov@gmail.com>
## @copyright  (c) 2015 Dmitry Kolesnikov. All Rights Reserved
##
## @description
##   simple echo server

PORT=8888
PIPE=/tmp/response.pipe

rm -f  ${PIPE}
mkfifo ${PIPE}
trap "rm -f ${PIPE}" EXIT

while true
do
   cat ${PIPE} | nc -l ${PORT} > >(
      while read INPUT 
      do
	 REQUEST=$(echo "${INPUT}" | tr -d '[\r\n]')
         echo "200:${REQUEST}" > ${PIPE}
      done
   )
done


