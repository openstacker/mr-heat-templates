#!/bin/sh

TIME=`date +"%H%M%S"`
STACK_NAME="VPN_${TIME}"

EXTERNAL_NETWORK_NAME_OR_ID='public'
SUBNET_CIDR='10.1.0.0/24'
SUBNET_POOL_START='10.1.0.10'
SUBNET_POOL_END='10.1.0.200'

heat stack-create ${STACK_NAME} -f network_setup.template -P "ExternalNetworkNameOrId=${EXTERNAL_NETWORK_NAME_OR_ID};SubnetCidr=${SUBNET_CIDR};SubnetPoolStart=${SUBNET_POOL_START};SubnetPoolEnd=${SUBNET_POOL_END}"
