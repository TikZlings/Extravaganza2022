# clean up old video
rm truecolors.mp4

# convert to png images
pdftoppm -png -r 240 -progress truecolors_repeat.pdf truecolors

# # convert to video
ffmpeg -ss 00:00:00 -i truecolors-%03d.png -ss 00:00:20 -i Cyndi_Lauper_True_colors.m4a -shortest truecolors_raw.mp4

# # repair video
HandBrakeCLI --crop 0:0:0:0  -i truecolors_raw.mp4 -o truecolors.mp4

# # clean up
rm truecolors-*.png
rm truecolors_raw.mp4

# view :)
open truecolors.mp4
