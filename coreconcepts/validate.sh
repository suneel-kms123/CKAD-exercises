#!/bin/bash

image=$(kubectl get pod nginx -o jsonpath='{.metadata.name}' -n=mynamespace)
         
if [ $image == "nginx" ]:
then
   echo "good"
else
   echo $image
fi

name=$(kubectl get pods -o=jsonpath='{.items[0].metadata.name}')

if [ $name == "busybox" ];
then
   echo "very good"
else
   echo $name
fi
