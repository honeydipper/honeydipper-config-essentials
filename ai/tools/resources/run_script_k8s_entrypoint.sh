#!/bin/bash
mkdir -p .hd-exec workspace
env > .hd-exec/env.list
touch .hd-exec/initialized
while true;
do
    if [ -f .hd-exec/quit ]; then
        echo "Quit signal received. Exiting."
        break
    fi
    counter="$(cat .hd-exec/counter 2>/dev/null || echo 0)"
    if [ "$counter" -gt "34560" ]; then
        echo "Idle timeout reached. Exiting."
        break
    fi
    counter="$((counter + 1))"
    echo "$counter" > .hd-exec/counter
    sleep 5;
done
