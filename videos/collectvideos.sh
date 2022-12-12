#!/bin/bash
COUNTER=1

cp ../intermissions/title.mp4 $COUNTER.mp4 ; COUNTER=$((COUNTER+1)) ;

# 1
cp ../intermissions/church.mp4 $COUNTER.mp4 ; COUNTER=$((COUNTER+1)) ;
cp ../samcarter/church/church.mp4 $COUNTER.mp4 ; COUNTER=$((COUNTER+1)) ;

# 2
cp ../intermissions/graffiti.mp4 $COUNTER.mp4 ; COUNTER=$((COUNTER+1)) ;
cp ../samcarter/graffiti/graffiti.mp4 $COUNTER.mp4 ; COUNTER=$((COUNTER+1)) ;

# 3
cp ../intermissions/smurfs.mp4 $COUNTER.mp4 ; COUNTER=$((COUNTER+1)) ;
cp ../samcarter/smurfs/smurfs.mp4 $COUNTER.mp4 ; COUNTER=$((COUNTER+1)) ;

# 4
cp ../intermissions/truecolors.mp4 $COUNTER.mp4 ; COUNTER=$((COUNTER+1)) ;
cp ../ulrike/truecolors/truecolors.mp4 $COUNTER.mp4 ; COUNTER=$((COUNTER+1)) ;

# 5
cp ../intermissions/Roma.mp4 $COUNTER.mp4 ; COUNTER=$((COUNTER+1)) ;
cp ../Carla/Roma/Roma.mp4 $COUNTER.mp4 ; COUNTER=$((COUNTER+1)) ;

# 6
cp ../intermissions/beelzebub.mp4 $COUNTER.mp4 ; COUNTER=$((COUNTER+1)) ;
cp ../ulrike/beelzebub/beelzebub.mp4 $COUNTER.mp4 ; COUNTER=$((COUNTER+1)) ;

# 7
cp ../intermissions/upwards.mp4 $COUNTER.mp4 ; COUNTER=$((COUNTER+1)) ;
cp ../ulrike/matterhorn/matterhorn.mp4 $COUNTER.mp4 ; COUNTER=$((COUNTER+1)) ;

# 8
cp ../intermissions/tugbonn.mp4 $COUNTER.mp4 ; COUNTER=$((COUNTER+1)) ;
cp ../ulrike/tugbonn/bear-bonn.mp4 $COUNTER.mp4 ; COUNTER=$((COUNTER+1)) ;

# 9
cp ../intermissions/silentnight.mp4 $COUNTER.mp4 ; COUNTER=$((COUNTER+1)) ;
cp ../ulrike/silentnight/silentnight.mp4 $COUNTER.mp4 ; COUNTER=$((COUNTER+1)) ;

# 10
cp ../intermissions/Bear_Ante_Portas.mp4 $COUNTER.mp4 ; COUNTER=$((COUNTER+1)) ;
cp ../samcarter/Bear_Ante_Portas/Bear_Ante_Portas.mp4 $COUNTER.mp4 ; COUNTER=$((COUNTER+1)) ;

# 11
cp ../intermissions/poetry.mp4 $COUNTER.mp4 ; COUNTER=$((COUNTER+1)) ;
cp ../paulo/poetry/ooh2.mp4 $COUNTER.mp4 ; COUNTER=$((COUNTER+1)) ;

# 12
cp ../intermissions/space.mp4 $COUNTER.mp4 ; COUNTER=$((COUNTER+1)) ;
cp ../samcarter/space/space.mp4 $COUNTER.mp4 ; COUNTER=$((COUNTER+1)) ;

# 13
cp ../intermissions/city-sleep.mp4 $COUNTER.mp4 ; COUNTER=$((COUNTER+1)) ;
cp ../ulrike/city-sleep/city-sleep.mp4 $COUNTER.mp4 ; COUNTER=$((COUNTER+1)) ;

# 14
cp ../intermissions/solidarity.mp4 $COUNTER.mp4 ; COUNTER=$((COUNTER+1)) ;
cp ../ulrike/solidarity/solidarity.mp4 $COUNTER.mp4 ; COUNTER=$((COUNTER+1)) ;

# 15
cp ../intermissions/finale.mp4 $COUNTER.mp4 ; COUNTER=$((COUNTER+1)) ;
cp ../ulrike/finale/finale.mp4 $COUNTER.mp4 ; COUNTER=$((COUNTER+1)) ;

cp ../intermissions/credits.mp4 $COUNTER.mp4 ; COUNTER=$((COUNTER+1)) ;

# -> the stich videos together with iMovie
# -> there is no safe button, look for `file->share->as file` to export to mp4
# -> run HandBrakeCLI --crop 0:0:0:0  -i Extravaganza.mp4 -o out.mp4 to make file smaller
