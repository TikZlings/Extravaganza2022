# clean up old video
rm graffiti1.mp4

# convert to png images
pdftoppm -png -r 240 -progress graffiti.pdf graffiti

# convert to video
ffmpeg  -ss 00:00:00 -i graffiti-%03d.png -ss 00:00:00 -i footsteps-on-pebbles-sound-effect.m4a -shortest graffiti1_raw.mp4

# repair video
HandBrakeCLI --crop 0:0:0:0  -i graffiti1_raw.mp4 -o graffiti1.mp4

# clean up
rm graffiti-*.png
rm graffiti1_raw.mp4

# view :)
open graffiti1.mp4

# ------------------------------------------------------------------------------

# clean up old video
rm graffiti2.mp4

# convert to png images
pdftoppm -png -r 240 -progress graffiti2.pdf graffiti2

# convert to video
ffmpeg  -ss 00:00:00 -i graffiti2-%03d.png -ss 00:00:00 -i Richard_Strauss_Don_Juan_excerpt.m4a -shortest graffiti2_raw.mp4

# repair video
HandBrakeCLI --crop 0:0:0:0  -i graffiti2_raw.mp4 -o graffiti2.mp4

# clean up
rm graffiti2-*.png
rm graffiti2_raw.mp4

# view :)
open graffiti2.mp4

# -----------------------------------------------------------------------------

# merge videos
rm graffiti_raw.mp4
echo file graffiti1.mp4 >  graffiti.txt 
echo file graffiti2.mp4 >> graffiti.txt
ffmpeg -f concat -i graffiti.txt -c copy graffiti_raw.mp4
HandBrakeCLI --crop 0:0:0:0  -i graffiti_raw.mp4 -o graffiti.mp4
rm graffiti_raw.mp4
open graffiti.mp4

