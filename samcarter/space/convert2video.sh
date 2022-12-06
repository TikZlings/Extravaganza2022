# clean up old video
rm space.mp4

# convert to png images
pdftoppm -png -r 240 space.pdf space

# convert to video
ffmpeg  -ss 00:00:00 -i space-%03d.png -ss 00:00:00 -i space-ambience-portal-to-the-stars.mp3 -shortest space_raw.mp4

# repair video
HandBrakeCLI --crop 0:0:0:0  -i space_raw.mp4 -o space.mp4

# clean up
rm space-*.png
rm space_raw.mp4

# view :)
open space.mp4
