#!/bin/sh

STACK_NAME='F1'
KEY_NAME='heat_key'

heat stack-create ${STACK_NAME} -f first_use_case.template -P "KeyName=${KEY_NAME}"
