# clean up old video
rm bear-bonn.mp4

# convert to png images
pdftoppm -png -r 240 -progress bear-bonn.pdf bear-bonn

# convert to video
ffmpeg  -ss 00:00:00 -i bear-bonn-%03d.png -ss 00:00:00 -i Schumann_-_Symphony_No._3_In_E_Flat_Op._97_-_Rhenish_-_1._Lebhaft_I-O7Iu5Vyo1us.m4a -shortest bear-bonn_raw.mp4

# repair video
HandBrakeCLI --crop 0:0:0:0 -i bear-bonn_raw.mp4 -o bear-bonn.mp4

# clean up
rm bear-bonn-*.png
rm bear-bonn_raw.mp4

# view :)
open bear-bonn.mp4
