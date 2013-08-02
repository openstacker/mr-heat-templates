#!/bin/sh

STACK_NAME='F1'
KEY_NAME='heat_key'
EXTERNAL_NETWORK_ID=`neutron net-list | grep public | awk '{print $2}' | xargs -I% echo %`

heat stack-create ${STACK_NAME} -f first_use_case.template -P "KeyName=${KEY_NAME};ExternalNetworkId=${EXTERNAL_NETWORK_ID}"
