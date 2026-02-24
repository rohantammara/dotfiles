#!/bin/bash

############################### FOLDER ICONS ###################################

folder=$(pwd)
# Construct the path for the folder icon
FOLDER_ICON_PATH="$folder/.icon"

if [[ -f "$FOLDER_ICON_PATH" ]]; then
    folder_icon=$(cat "$FOLDER_ICON_PATH")
else
    echo "Could not find an .icon file in $folder, using the default icon 🖥️"
    folder_icon="🖥️"
fi

# Strip the path and leave the folder name
folder_name=$(basename "$folder")

# replace the . with a space
folder_name=$(echo "$folder_name" | sed 's/\./ /g')

# Construct the session name
SESSION="$folder_icon  $folder_name"

# Attach to Tmux

if [[ -z "$TMUX" ]]; then
    # We're not inside Tmux
    echo "Attaching to $SESSION"
    tmux -u attach -d -t "$SESSION" || tmux -u new-session -s "$SESSION"
else
    # We're inside Tmux
    if [[ $(tmux -u ls | grep -c "$SESSION") -eq 0 ]]; then
        # Create a new detached session
        tmux -u new -s "$SESSION" -d
    fi

    # Switch to the session
    tmux -u switch-client -t "$SESSION"
fi
