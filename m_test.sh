#! /bin/bash

sudo apt update

ping -c 5 ${eip1} > file.log
ping -c 5 ${eip2} >> file
