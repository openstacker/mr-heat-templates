#!/bin/sh

TIME=`date +"%H%M%S"`
STACK_NAME="VPN_${TIME}"

EXTERNAL_NETWORK_ID=`neutron net-list | grep public | awk '{print $2}' | xargs -I% echo %`
EXTERNAL_GATEWAY_IP_ADDRESS='172.24.4.233'
SUBNET_CIDR='10.1.0.0/24'
SUBNET_POOL_START='10.1.0.10'
SUBNET_POOL_END='10.1.0.200'
VPN_PEER_CIDR='10.2.0.0/24'

heat stack-create ${STACK_NAME} -f vpn_service.template -P "ExternalNetworkId=${EXTERNAL_NETWORK_ID};ExternalGatewayIPAddress=${EXTERNAL_GATEWAY_IP_ADDRESS};SubnetCidr=${SUBNET_CIDR};SubnetPoolStart=${SUBNET_POOL_START};SubnetPoolEnd=${SUBNET_POOL_END};VPNPeerCidr=${VPN_PEER_CIDR}"
