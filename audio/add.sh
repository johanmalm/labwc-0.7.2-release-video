#!/bin/sh

ffmpeg \
  -i ~/recording.mkv \
  -i city.mp3 \
  -map 0:v \
  -map 1:a \
  -c:v copy \
  -filter:a "volume=0.5" \
  -shortest \
  output.mkv
 
