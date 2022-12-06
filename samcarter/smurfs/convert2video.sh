# clean up old video
rm smurfs.mp4

# convert to png images
pdftoppm -png -r 240 smurfs.pdf smurfs

# convert to video
ffmpeg  -ss 00:00:00 -i smurfs-%03d.png -ss 00:00:47 -i The_Smurf_Song_-_Father_Abraham-1oofM5ttD6c.m4a -shortest smurfs_raw.mp4

# repair video
HandBrakeCLI --crop 0:0:0:0  -i smurfs_raw.mp4 -o smurfs.mp4

# clean up
rm smurfs-*.png
rm smurfs_raw.mp4

# view :)
open smurfs.mp4
