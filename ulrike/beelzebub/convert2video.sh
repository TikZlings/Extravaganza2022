# clean up old video
rm beelzebub.mp4

# convert to png images
pdftoppm -png -r 240 beelzebub.pdf beelzebub

# convert to video
ffmpeg  -ss 00:00:00 -i beelzebub-%03d.png -ss 00:00:05 -i I_am_the_God_of_hellfire-nkWR3F-W7YI.m4a -shortest beelzebub_raw.mp4

# repair video
HandBrakeCLI --crop 0:0:0:0 -i beelzebub_raw.mp4 -o beelzebub.mp4

# clean up
rm beelzebub-*.png
rm beelzebub_raw.mp4

# view :)
open beelzebub.mp4
