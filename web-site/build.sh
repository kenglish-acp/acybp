#!/bin/bash
#
#  This script builds the website container dependencies from scratch
#

CURDIR=$PWD
cd parentage/m/mysql/5.7
docker build
cd $CURDIR

cd parentage/y/php--7.2--stretch--apache
docker build
cd $CURDIR

cd parentage/z/wordpress--php7.2--apache
docker build
cd $CURDIR

