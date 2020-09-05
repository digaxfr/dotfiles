#!/bin/zsh
# rsync calls for backup to external drive.

rsync -avh --progress --delete Music/ /Volumes/Backups/Music/
rsync -avh --progress --delete Documents/ /Volumes/Backups/Documents/
rsync -avh --progress --delete --exclude "Photos Library.photoslibrary" --exclude "Photo Booth Library" Pictures/ /Volumes/Backups/Pictures/
