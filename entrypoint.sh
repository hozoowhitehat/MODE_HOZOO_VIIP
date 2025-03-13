#!/bin/bash
# Initialize Git repository
git init

# Add files to the repository
git add .

# Commit the changes
git commit -m "Initial commit with NoVNC and sound support"

# Push to GitHub
git remote add origin https://github.com/your-username/your-repo.git
git push -u origin master

# Start PulseAudio
pulseaudio --start

# Start x11vnc
x11vnc -display :0 -rfbport 5900 -rfbauth /root/.vnc/passwd -forever

# Start NoVNC
/usr/share/novnc/utils/launch.sh --vnc localhost:5900
