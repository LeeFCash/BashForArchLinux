#!/bin/bash
i=0
beforeMmove=$(xdotool getmouselocation)
checkMmove=$beforeMmove

checklocation() {
    if [ "$checkMmove" != "$beforeMmove" ]; then
        i=0
	echo "reset timer"
    else
        i=$((i+1))
	echo "added to timer"
        if [ "$i" -eq 4800 ]; then
            echo "No mouse movement detected for 60 seconds. Shutting down..."
            echo "password" | sudo -S shutdown -h now
        fi
    fi
    beforeMmove=$checkMmove
}

# Main loop
while true; do
    checkMmove=$(xdotool getmouselocation)
    checklocation
    sleep 1
done
