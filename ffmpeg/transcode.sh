#!/bin/bash

# Transcode input video input h264 format.

if [[ $# -ne 2 ]]; then
  echo "I’m sorry, needs 2 input params."
  echo "E.g.,"
  echo "  transcode INPUT_FILE OUTPUT_FILE"
  exit 1
fi

# ffmpeg -i ${1} -an -vcodec libx264 -crf 23 ${2} 
ffmpeg -i ${1} -r 25 -s 1920x1080 -c:v libx264 -b:v 3M -strict -2 -movflags faststart ${2} 
