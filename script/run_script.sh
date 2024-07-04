# scripts/run_script.sh
#!/bin/bash

# Load configuration
source "$(dirname "$0")/../config/config.sh"

# Lock file to prevent multiple instances
LOCKFILE="/tmp/run_script.lock"

# Function to clean up resources
cleanup() {
    rm -f "$LOCKFILE"
    deactivate
    exit 1
}

# Trap signals for cleanup
trap cleanup INT TERM EXIT

# Check if lock file exists
if [ -e "$LOCKFILE" ]; then
    echo "Script is already running."
    exit 1
fi

# Create lock file
touch "$LOCKFILE"

# Activate virtual environment
source "$VENV_PATH/bin/activate"

# Run Python script and log output with timestamp
{
    echo "$(date '+%Y-%m-%d %H:%M:%S') - Starting script"
    /usr/bin/python3 "$PYTHON_SCRIPT"
    echo "$(date '+%Y-%m-%d %H:%M:%S') - Script finished"
} >> "$LOG_FILE" 2>&1

# Deactivate virtual environment
deactivate

# Remove lock file
rm -f "$LOCKFILE"

# Send notification
notify-send "$(date '+%Y-%m-%d %H:%M:%S') YouTube Playlist Update" "The playlist update script has finished running."

# Cleanup trap
trap - INT TERM EXIT

exit 0
