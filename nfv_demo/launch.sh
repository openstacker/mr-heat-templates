#!/bin/sh

STACK_NAME='NFV_DEMO'
KEY_NAME='heat_key'

heat stack-create ${STACK_NAME} -f nfv_demo.template -P "KeyName=${KEY_NAME}"

