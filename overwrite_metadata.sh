#!/bin/bash

find ./ -type f -iname '*.mp4' \
  -exec ffmpeg \
   -i "{}" \
   -codec copy \
   -metadata title="{}" \
   -metadata comment="" \
   "{}.new.mp4" \; \
  -exec mv "{}.new.mp4" "{}" \;
