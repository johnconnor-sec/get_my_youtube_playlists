# get_my_youtube_playlists
A tool to retrieve all your videos from your playlists and place them as embedded markdown links in a (preferably) markdown file.

# PROJECT OVERVIEW

Automates fetching and updating YouTube playlist videos into Obsidian notes using a Python script.

# THE PROBLEM IT ADDRESSES

Helps keep Obsidian notes updated with the latest videos from specified YouTube playlists.

# THE APPROACH TO SOLVING THE PROBLEM

Fetches latest videos from YouTube playlists and appends them to corresponding Obsidian note files.

# INSTALLATION

- Run the setup script: `./setup.sh`
- Add your YouTube API key in `.config/config.sh`
- Edit `app.py` to point to your directories of choice

# USAGE

- Ensure the virtual environment is activated
- Run the script: `./scripts/run_script.sh`

# EXAMPLES

- Automatically update Obsidian notes with new videos from a "Python Tutorials" playlist
- Keep track of new AI-related videos in a dedicated Obsidian note
- Monitor and log updates for multiple YouTube playlists in one place
