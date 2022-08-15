#!/bin/bash

function smallvid() {
  for name in *.mp4; do ffmpeg -i "$name" -vcodec h264 -acodec mp3 "reduced/${name%.*}.mp4"; done
}
function convertwebp() {
  for i in *.webp; do dwebp $i -o $i.png; done
}
