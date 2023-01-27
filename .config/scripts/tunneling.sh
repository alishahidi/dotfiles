#!/bin/bash

# Create menu options
options="Start\nStop"

# Show menu and store user's choice
choice=$(echo -e "$options" | dmenu -p "Choose an option:")

# Check user's choice and run the corresponding script
if [ "$choice" == "Start" ]; then
    pkexec ~/.config/scripts/start-tunneling.sh
elif [ "$choice" == "Stop" ]; then
    pkexec ~/.config/scripts/stop-tunneling.sh
fi

