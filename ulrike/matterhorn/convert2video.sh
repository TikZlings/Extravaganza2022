# clean up old video
rm matterhorn.mp4

# convert to png images
pdftoppm -png -r 240 matterhorn.pdf matterhorn

# convert to video
ffmpeg  -ss 00:00:00 -i matterhorn-%03d.png -ss 00:01:20 -i Vangelis_-_Conquest_of_paradise-WYeDsa4Tw0c.m4a -shortest matterhorn_raw.mp4

# repair video
HandBrakeCLI --crop 0:0:0:0 -i matterhorn_raw.mp4 -o matterhorn.mp4

# clean up
rm matterhorn-*.png
rm matterhorn_raw.mp4

# view :)
# open matterhorn.mp4
