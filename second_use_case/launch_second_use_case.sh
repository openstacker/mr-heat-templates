#!/bin/sh

STACK_NAME='S1'
KEY_NAME='heat_key'

heat stack-create ${STACK_NAME} -f second_use_case.template -P "KeyName=${KEY_NAME}"
