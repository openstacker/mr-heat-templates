#!/bin/sh

STACK_NAME='D1'
KEY_NAME='heat_key'
REGION_NAME='RegionOne'
EXTERNAL_NETWORK_NAME_OR_ID='public'
EXTERNAL_GATEWAY_IP_ADDRESS='172.24.4.233'
SUBNET_CIDR='10.1.0.0/24'
SUBNET_POOL_START='10.1.0.10'
SUBNET_POOL_END='10.1.0.200'
VPN_PEER_CIDR='10.2.0.0/24'

heat stack-create ${STACK_NAME} -f db_server.template -P "KeyName=${KEY_NAME};RegionName=${REGION_NAME};ExternalNetworkNameOrId=${EXTERNAL_NETWORK_NAME_OR_ID};ExternalGatewayIPAddress=${EXTERNAL_GATEWAY_IP_ADDRESS};SubnetCidr=${SUBNET_CIDR};SubnetPoolStart=${SUBNET_POOL_START};SubnetPoolEnd=${SUBNET_POOL_END};VPNPeerCidr=${VPN_PEER_CIDR}"
