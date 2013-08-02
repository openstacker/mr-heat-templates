#!/bin/sh

STACK_NAME='S1'
KEY_NAME='heat_key'
EXTERNAL_NETWORK_ID=`neutron net-list | grep public | awk '{print $2}' | xargs -I% echo %`

heat stack-create ${STACK_NAME} -f second_use_case.template -P "KeyName=${KEY_NAME};ExternalNetworkId=${EXTERNAL_NETWORK_ID}"
