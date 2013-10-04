#!/bin/sh

TIME=`date +"%H%M%S"`
STACK_NAME="CTX_${TIME}"

USERNAME='demo'
PASSWORD='openstack'
PROJECT_NAME='demo'
REGION_NAME='RegionOne'

heat stack-create ${STACK_NAME} -f context.template -P "Username=${USERNAME};Password=${PASSWORD};ProjectName=${PROJECT_NAME};RegionName=${REGION_NAME}"
