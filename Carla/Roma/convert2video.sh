# clean up old video
rm Roma.mp4

# convert to png images
pdftoppm -png -r 240 Roma_repeat.pdf Roma

# convert to video
ffmpeg -ss 00:00:00 -i Roma-%03d.png -ss 00:00:27 -i Italienische_Nationalhymne-0WXYviTa_X0.m4a -shortest Roma_raw.mp4

# repair video
HandBrakeCLI --crop 0:0:0:0  -i Roma_raw.mp4 -o Roma.mp4

# clean up
rm Roma-*.png
rm Roma_raw.mp4

# view :)
# open Roma.mp4
