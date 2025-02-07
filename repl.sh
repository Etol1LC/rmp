#!/bin/bash

# Define the host for pdsend
HOST="localhost"

# Function to send input to pdsend
send_to_pdsend() {
    local port=$1
    local message=$2
    echo "$message" | pdsend "$port" "$HOST" > /dev/null 2>&1
}

send_to_pdsend_ex() {
    local port=$1
    local message=$2
    echo "$message" | sed "s/t/\$v1/g" | sed "s/ //g" | pdsend "$port" "$HOST" > /dev/null 2>&1
}

# Function to process messages and send to the appropriate port
process_message() {
    local message=$1
    if [[ "$message" =~ ^vl || "$message" =~ ^vd_ || "$message" =~ ^p1 ]]; then
        send_to_pdsend 6004 "$message"
        echo -e "\e[5m\e[35m\e[42m------>$1\e[0m"
    else
        send_to_pdsend_ex 6000 "$message"
        echo -e "\e[5m\e[35m\e[42m------>$1\e[0m"
    fi
}

# Set up history file
HISTFILE=~/.rmp_history
HISTSIZE=1000
SAVEHIST=1000

# Load history from file
if [[ -f "$HISTFILE" ]]; then
    history -r
fi
clear

echo "WELCOME TO RMP: LET'S BYTEBEAT!"
# REPL loop
while true; do
    # Prompt user for input with readline support and history
    read -e -p "rmp> " user_input

    # Save the input to history
    if [[ -n "$user_input" ]]; then
        history -s "$user_input"
        history -w
    fi

    # Check if the user wants to exit the REPL
    if [[ "$user_input" == "exit" ]]; then
        echo "EXITING REPL. GOOD BYE! >'|'<"
        break
    fi

    # Process user input
    process_message "$user_input"
    sleep 0.6
    clear
done