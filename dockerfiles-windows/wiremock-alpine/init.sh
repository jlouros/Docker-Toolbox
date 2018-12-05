#!/bin/bash

#Define cleanup procedure
cleanup() {
    echo "Container stopped, performing cleanup..."
    wget http://127.0.0.1:8080/__admin/shutdown --post-data ''
}

#Trap SIGTERM
trap 'cleanup' SIGTERM

#Execute a command
"${@}" &

#Wait
wait $!
