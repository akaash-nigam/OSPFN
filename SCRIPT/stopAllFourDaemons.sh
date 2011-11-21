#!/bin/sh
# Script for killing/stopping ospfd,zebra, ospfn and ccnd
# Author Hoque  - Nov/18/2011

# killing ospfn
echo "Killing ospfn.....";
kill `ps aux | grep ospfn | awk -F" " '{ print $2}'` 2> /dev/null;
echo "Done";
sleep 1

# killing ospfd
echo "Killing ospfd.....";
kill `ps aux | grep ospfd | awk -F" " '{ print $2}'` 2> /dev/null;
echo "Done";
sleep 1

#killing zebra
echo "Killing zebra.....";
kill `ps aux | grep zebra | awk -F" " '{ print $2}'` 2> /dev/null
echo "Done";
sleep 1

#killing ccnd
echo "Killing ccnd.....";
kill `ps aux | grep ccnd | awk -F" " '{ print $2}'` 2> /dev/null
echo "Done";