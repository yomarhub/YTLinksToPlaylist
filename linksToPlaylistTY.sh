#!/bin/bash
#Take YouTube Links from you.list file and give a playlist link
if ! [ -f you.list ] ; then
echo "No you.list please write the links next (press enter to continue)..."
read -s
nano you.list
fi
link=$(echo -n http://www.youtube.com/watch_videos?video_ids= ; grep -o 'v=.*' you.list | cut -f2 -d=| tr '\n' ',' ; echo)
echo "${link%%?}"
