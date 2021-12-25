#!/bin/bash
COUNTER=1

cp ../intermissions/title.mp4 $COUNTER.mp4 ; COUNTER=$((COUNTER+1)) ;

cp ../intermissions/xxx.mp4 $COUNTER.mp4 ; COUNTER=$((COUNTER+1)) ;
cp ../samcarter/xxx/xxx.mp4 $COUNTER.mp4 ; COUNTER=$((COUNTER+1)) ;

cp ../intermissions/credits.mp4 $COUNTER.mp4 ; COUNTER=$((COUNTER+1)) ;

# -> the stich videos together with iMovie
# -> there is no safe button, look for `file->share->as file` to export to mp4
# -> run HandBrakeCLI --crop 0:0:0:0  -i Extravaganza.mp4 -o out.mp4 to make file smaller
