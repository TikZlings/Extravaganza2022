# clean up old video
rm graffiti.mp4

# convert to png images
pdftoppm -png -r 240 graffiti.pdf graffiti

# convert to video
ffmpeg  -ss 00:00:00 -i graffiti-%03d.png -ss 00:00:00 -i Traffic-noise-sound-effect.mp3 -shortest graffiti_raw.mp4

# repair video
HandBrakeCLI --crop 0:0:0:0  -i graffiti_raw.mp4 -o graffiti.mp4

# clean up
rm graffiti-*.png
rm graffiti_raw.mp4

# view :)
# open graffiti.mp4

# ------------------------------------------------------------------------------

# clean up old video
rm graffiti2.mp4

# convert to png images
pdftoppm -png -r 240 graffiti2.pdf graffiti2

# convert to video
ffmpeg  -ss 00:00:00 -i graffiti2-%03d.png -ss 00:00:00 -i Richard_Strauss_Don_Juan_excerpt.mp3 -shortest graffiti2_raw.mp4

# repair video
HandBrakeCLI --crop 0:0:0:0  -i graffiti2_raw.mp4 -o graffiti2.mp4

# clean up
rm graffiti2-*.png
rm graffiti2_raw.mp4

# view :)
# open graffiti2.mp4
