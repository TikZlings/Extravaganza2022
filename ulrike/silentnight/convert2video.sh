# clean up old video
rm silentnight.mp4

# convert to png images
pdftoppm -png -r 240 silentnight_repeat.pdf silentnight

# convert to video
ffmpeg  -ss 00:00:00 -i silentnight-%03d.png -ss 00:00:10 -i Silent_Night_Jimi_Hendrix_Mix_-_Diane_di_Stasio-TfqXl6lBDfI.m4a -shortest silentnight_raw.mp4

# repair video
HandBrakeCLI --crop 0:0:0:0  -i silentnight_raw.mp4 -o silentnight.mp4

# clean up
rm silentnight-*.png
rm silentnight_raw.mp4

# view :)
open silentnight.mp4
