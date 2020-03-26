#!/bin/bash

NAME=$1
FLAG=$2

if [[ "x${FLAG}" == "x" || ${FLAG} != "yes" ]];then
  echo Hello, Unknown
else
  echo Hello, $NAME
fi
