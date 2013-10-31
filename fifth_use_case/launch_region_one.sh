#!/bin/sh

STACK_NAME='WD1'

KEY_NAME='heat_key'
REGION_NAME='RegionOne'
DB_AVAILABILITY_ZONE_NAME='nova'
WORDPRESS_AVAILABILITY_ZONE_NAME='nova'

heat stack-create ${STACK_NAME} -f region_one.template -P "KeyName=${KEY_NAME};RegionName=${REGION_NAME};DBAvailabilityZoneName=${DB_AVAILABILITY_ZONE_NAME};WordpressAvailabilityZoneName=${WORDPRESS_AVAILABILITY_ZONE_NAME}"
