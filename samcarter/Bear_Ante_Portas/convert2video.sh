# clean up old video
rm Bear_Ante_Portas.mp4

# convert to png images
pdftoppm -png -r 240 -progress Bear_Ante_Portas.pdf Bear_Ante_Portas

# convert to video
ffmpeg  -ss 00:00:00 -i Bear_Ante_Portas-%03d.png -ss 00:00:00 -i Miklos_Rozsa_-_Marcha_Romana_Ben_Hur-sH2X5ThSMlI.m4a -shortest Bear_Ante_Portas_raw.mp4

# repair video
HandBrakeCLI --crop 0:0:0:0 -i Bear_Ante_Portas_raw.mp4 -o Bear_Ante_Portas.mp4

# clean up
rm Bear_Ante_Portas-*.png
rm Bear_Ante_Portas_raw.mp4

# view :)
open Bear_Ante_Portas.mp4
