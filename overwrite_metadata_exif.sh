#!/bin/bash

find ./ -type f -iname '*.mp4' \
  -exec exiftool \
   -Title="{}" {} \; \
  -exec rm "{}_original" \;
