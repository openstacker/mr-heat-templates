#!/bin/sh

STACK_NAME=T1
KEY_NAME=heat_key

heat stack-create ${STACK_NAME} -f third_use_case.template -P "KeyName=${KEY_NAME}"
