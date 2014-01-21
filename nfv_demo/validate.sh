#!/bin/sh

heat template-validate --template-file db_server.template
heat template-validate --template-file wp_server.template
heat template-validate --template-file region_one.template
heat template-validate --template-file region_two.template
heat template-validate --template-file nfv_demo.template

