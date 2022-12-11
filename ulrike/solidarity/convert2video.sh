# clean up old video
rm solidarity.mp4

# convert to png images
pdftoppm -png -r 240 solidarity.pdf solidarity

# convert to video
ffmpeg  -ss 00:00:00 -i solidarity-%03d.png -ss 00:01:20 -i Gerry_The_Pacemakers_-_You_ll_Never_Walk_Alone_Official_Video-436097296.m4a -shortest solidarity_raw.mp4

# repair video
HandBrakeCLI --crop 0:0:0:0 -i solidarity_raw.mp4 -o solidarity.mp4

# clean up
rm solidarity-*.png
rm solidarity_raw.mp4

# view :)
open solidarity.mp4
