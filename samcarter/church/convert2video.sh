# clean up old video
rm church.mp4

# convert to png images
pdftoppm -png -r 240 -progress church.pdf church

# convert to video
ffmpeg  -ss 00:00:00 -i church-%03d.png -ss 00:00:18 -i BBC_One_-_Songs_of_Praise_The_Nativity_O_Come_All_Ye_Faithful-p08mdj9p.m4a -shortest church_raw.mp4

# repair video
HandBrakeCLI --crop 0:0:0:0  -i church_raw.mp4 -o church.mp4

# clean up
rm church-*.png
rm church_raw.mp4

# view :)
open church.mp4
