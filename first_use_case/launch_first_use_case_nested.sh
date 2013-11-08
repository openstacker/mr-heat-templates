#!/bin/sh

STACK_NAME='N1'
KEY_NAME='heat_key'
REGION_NAME='RegionOne'
EXTERNAL_NETWORK_NAME_OR_ID='public'
SUBNET_CIDR='10.1.0.0/24'
SUBNET_POOL_START='10.1.0.10'
SUBNET_POOL_END='10.1.0.200'
VPN_PEER_CIDR='10.2.0.0/24'

heat stack-create ${STACK_NAME} -f first_use_case_nested.template -P "KeyName=${KEY_NAME};RegionName=${REGION_NAME};ExternalNetworkNameOrId=${EXTERNAL_NETWORK_NAME_OR_ID};SubnetCidr=${SUBNET_CIDR};SubnetPoolStart=${SUBNET_POOL_START};SubnetPoolEnd=${SUBNET_POOL_END};VPNPeerCidr=${VPN_PEER_CIDR}"

