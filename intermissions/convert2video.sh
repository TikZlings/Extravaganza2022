#!/bin/bash

# passing a title to the intermission
# Params:
# 1: jobname
# 2: some string for the title
convert2video(){

    # compiling
    latexmk -jobname=extravaganza-intermission-$1 -pretex="\def\mytitle{$2}" -usepretex extravaganza-intermission
    
    # clean up old video
    rm $1.mp4

    # convert to png images
    # convert -density 160 extravaganza-intermission-$1.pdf $1.png
    pdftoppm -png -r 240 extravaganza-intermission-$1.pdf $1

    # convert to video
    ffmpeg -r 10 -ss 00:00:00 -i $1-%02d.png -ss 00:00:04 -i JingleBells.m4a -shortest $1_raw.mp4

    # repair video
    HandBrakeCLI --crop 0:0:0:0 -i $1_raw.mp4 -o $1.mp4

    # clean up
    rm $1-*.png
    rm $1_raw.mp4
    rm extravaganza-intermission-$1.aux
    rm extravaganza-intermission-$1.log
    rm extravaganza-intermission-$1.nav
    rm extravaganza-intermission-$1.snm
    rm extravaganza-intermission-$1.toc
    rm extravaganza-intermission-$1.out
    rm extravaganza-intermission-$1.fls
    rm extravaganza-intermission-$1.fdb_latexmk

}

# repeat an existing pdf several times
# Params:
# 1: jobname
# 2: path and name to the pdf file
# 3: number of repetitions [default 75]
repeatconvert(){

    # compiling
    latexmk -jobname=extravaganza-intermission-$1 -pretex="\def\filename{$2}\def\myrepeat{$3}" -usepretex repeat  
    
    # clean up old video
    rm $1.mp4

    # convert to png images
    pdftoppm -png -r 240 extravaganza-intermission-$1.pdf $1

    # convert to video
    ffmpeg -r 10 -ss 00:00:00 -i $1-%03d.png -ss 00:00:04 -i JingleBells.m4a -shortest $1_raw.mp4

    # repair video
    HandBrakeCLI --crop 0:0:0:0 -i $1_raw.mp4 -o $1.mp4

    # clean up
    rm $1-*.png
    rm $1_raw.mp4
    rm extravaganza-intermission-$1.aux
    rm extravaganza-intermission-$1.log
    rm extravaganza-intermission-$1.nav
    rm extravaganza-intermission-$1.snm
    rm extravaganza-intermission-$1.toc
    rm extravaganza-intermission-$1.out
    rm extravaganza-intermission-$1.fls
    rm extravaganza-intermission-$1.fdb_latexmk
        
}

# Converting

# repeatconvert title "./extravaganza-titlepage.pdf" 101
# convert2video church "Come all ye faithful" 
# convert2video graffiti "Bring on the music"
# convert2video smurfs "Tribute to Vader Abraham (1953 -- 2022)"
# convert2video truecolors "True colours"
# convert2video Roma "C‘era una volta a Roma"
# convert2video beelzebub "Bee-lzebub"
convert2video  "Upwards"
# convert2video tugbonn "Commercial break"
convert2video  "Silent Night"
# convert2video Bear_Ante_Portas "SPQR"
# convert2video  poetry "Some poetry - with apologies to J.R.R. Tolkien"
# convert2video space "Pig in Space"
# convert2video city-sleep "The city that never sleeps"
convert2video  "Duck solidarity"
# convert2video finale "Grand finale"
# repeatconvert credits "./extravaganza-credits.pdf" 150

