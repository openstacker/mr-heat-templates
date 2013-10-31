#!/bin/sh

STACK_NAME=FT1
KEY_NAME=heat_key
KVM_AVAILABILITY_ZONE_NAME='nova'
VMWARE_AVAILABILITY_ZONE_NAME='nova'

heat stack-create ${STACK_NAME} -f fifth_use_case.template -P "KeyName=${KEY_NAME};KVMAvailabilityZoneName=${KVM_AVAILABILITY_ZONE_NAME};VMWAREAvailabilityZoneName=${VMWARE_AVAILABILITY_ZONE_NAME}"