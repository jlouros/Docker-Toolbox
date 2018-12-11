#!/bin/bash

#Define cleanup procedure
cleanup() {
    echo "Container stopped, performing cleanup..."
    echo "> sending request to shutdown Wiremock..."
    wget 'http://127.0.0.1:8080/__admin/shutdown' --post-data '' -q -S -T 1
}

#Trap SIGTERM
trap 'cleanup' SIGTERM

#Execute a command
"${@}" &

#Wait
wait $!
