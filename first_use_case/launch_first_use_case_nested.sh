#!/bin/sh

STACK_NAME='N1'
KEY_NAME='heat_key'
REGION_NAME='RegionOne'
SUBNET_ID=`neutron subnet-list | grep private | awk '{print $2}'`


heat stack-create ${STACK_NAME} -f first_use_case_nested.template -P "KeyName=${KEY_NAME};RegionName=${REGION_NAME};SubnetId=${SUBNET_ID}"
