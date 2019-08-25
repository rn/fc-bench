#! /bin/sh

DIR=$1

if [ -z $DIR ];
   echo "Please specify a directory for the data"
   exit 1
then

sudo ./00_setup_host.sh

sudo ./run-system.sh -d $DIR

./run-boot-serial.sh   -d $DIR
./run-boot-net.sh      -d $DIR
./run-boot-parallel.sh -d $DIR
./run-boot-kernel.sh   -d $DIR

./run-mem.sh           -d $DIR
./run-net.sh           -d $DIR
