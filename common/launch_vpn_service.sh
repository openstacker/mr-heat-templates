#!/bin/sh

TIME=`date +"%H%M%S"`
STACK_NAME="VPN_${TIME}"

ROUTER_ID=`neutron router-list | grep router1 | awk '{print $2}'`
SUBNET_ID=`neutron subnet-list | grep private | awk '{print $2}'`
EXTERNAL_GATEWAY_IP_ADDRESS='172.24.4.226'
VPN_PEER_CIDR='10.1.0.0/24'

heat stack-create ${STACK_NAME} -f vpn_service.template -P "RouterId=${ROUTER_ID};SubnetId=${SUBNET_ID};ExternalGatewayIPAddress=${EXTERNAL_GATEWAY_IP_ADDRESS};VPNPeerCidr=${VPN_PEER_CIDR}"
