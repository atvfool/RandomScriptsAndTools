#!/bin/bash

# Save Files to list file
find ./ -type f -iname '*.mp4' -exec basename {} .mp4 \; > episodes

# Run the mv script
subname="3_English"
while IFS= read -r line
do
 printf "Moving mv Subs/$line/$subname.srt ./$line.en.srt\n"
 mv -v Subs/$line/$subname.srt ./$line.en.srt
done < "episodes"

# cleanup file
rm episodes
