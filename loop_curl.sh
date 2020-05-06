#!/bin/bash

URLS="http://www.pudim.com.br/ http://www.google.com/ https://ifconfig.me/ http://fumadao.com.br/"


for i in `echo $URLS`; do

        ping 777 >&/dev/null
        while [ $? != 0 ]; do
                sleep 1
                echo "Curl $i"
                curl -I $i >&/dev/null
        done

done
