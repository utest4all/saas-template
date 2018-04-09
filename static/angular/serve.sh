#!/bin/bash -e
export $(cat ./../../.env | grep -v ^# | xargs)
ng server --host=${STATIC_ANGULAR_LSTN} --port=${STATIC_ANGULAR_PORT}
