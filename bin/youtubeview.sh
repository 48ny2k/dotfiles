#!/bin/bash

# Able to watch vids without a browser using this line of command, 
# with mplayer and youtube-dl

youtubeview () {
mplayer $(youtube-dl -g "$1")
}
