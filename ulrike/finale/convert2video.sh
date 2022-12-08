# clean up old video
rm finale.mp4

# convert to png images
pdftoppm -png -r 240 finale_repeat.pdf finale

# convert to video
ffmpeg  -ss 00:00:00 -i finale-%03d.png -ss 00:00:18 -i John_Lennon-_Give_Peace_a_Chance_with_Lyrics-x2pinoj.mp3 -shortest finale_raw.mp4

# repair video
HandBrakeCLI --crop 0:0:0:0  -i finale_raw.mp4 -o finale.mp4

# clean up
rm finale-*.png
rm finale_raw.mp4

# view :)
open finale.mp4
