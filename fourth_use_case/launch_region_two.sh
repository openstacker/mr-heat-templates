#!/bin/sh

STACK_NAME='WD2'

KEY_NAME='heat_key'
REGION_NAME='RegionTwo'
DB_SERVER_IP_ADDRESS='10.0.0.1'
WORDPRESS_AVAILABILITY_ZONE_NAME='nova'

heat stack-create ${STACK_NAME} -f region_two.template -P "KeyName=${KEY_NAME};RegionName=${REGION_NAME};DBServerIPAddress=${DB_SERVER_IP_ADDRESS};WordpressAvailabilityZoneName=${WORDPRESS_AVAILABILITY_ZONE_NAME}"
