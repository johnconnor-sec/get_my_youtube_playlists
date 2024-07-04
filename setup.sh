# setup.sh
#!/bin/bash

# Create project directories
mkdir -p project/{config,scripts,logs}

# Create initial files
touch project/config/config.sh project/scripts/run_script.sh project/logs/cron.log

# Make the script executable
chmod +x project/scripts/run_script.sh

echo "Project setup complete."
