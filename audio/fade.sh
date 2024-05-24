#!/bin/sh

# video is 3:20 (=200)

filename=city-rush-feat-udio-by-sascha-ende-from-filmmusic-io.mp3
secs=$((200 - 18))  # duration of music clip less fade time - get duration with ffprobe
fsecs=18 # max that my ffmpeg-5.1.3 allows - should be enough
ffmpeg -i $filename -af "afade=t=out:st=$secs:d=$fsecs" out.mp3 

