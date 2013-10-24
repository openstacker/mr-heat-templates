#!/bin/sh

TIME=`date +"%H%M%S"`
STACK_NAME="CTX_${TIME}"

USERNAME='demo'
PASSWORD='openstack'
TENANT='demo'
REGION_NAME='RegionOne'

heat stack-create ${STACK_NAME} -f context.template -P "Username=${USERNAME};Password=${PASSWORD};Tenant=${TENANT};RegionName=${REGION_NAME}"
