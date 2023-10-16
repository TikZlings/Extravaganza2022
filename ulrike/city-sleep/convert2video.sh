# clean up old video
rm city-sleep.mp4

# convert to png images
pdftoppm -png -r 240 -progress city-sleep_repeat.pdf city-sleep

# convert to video
ffmpeg  -ss 00:00:00 -i city-sleep-%03d.png -ss 00:01:05 -i Luciano_Pavarotti_sings_Nessun_dorma_from_Turandot_The_Three_Tenors_in_Concert_1994-cWc7vYjgnTs.m4a -shortest city-sleep_raw.mp4

# repair video
HandBrakeCLI --crop 0:0:0:0 -i city-sleep_raw.mp4 -o city-sleep.mp4

# clean up
rm city-sleep-*.png
rm city-sleep_raw.mp4

# view :)
open city-sleep.mp4
