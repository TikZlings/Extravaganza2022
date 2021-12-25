# clean up old video
rm Example.mp4

# convert to png images
convert -density 240 Example.pdf Example.png

# convert to video
ffmpeg  -ss 00:00:00 -i Example-%d.png -ss 00:00:00 -i Music.m4a -shortest Example_raw.mp4

# repair video
HandBrakeCLI --crop 0:0:0:0  -i Example_raw.mp4 -o Example.mp4

# clean up
rm Example-*.png
rm Example_raw.mp4

# view :)
open Example.mp4
