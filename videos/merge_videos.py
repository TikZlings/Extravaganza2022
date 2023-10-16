################################################################################
#
# stitching together the videos with transitions
# call with `python3 merge_videos.py`
# 
################################################################################
from moviepy.editor import *
import os

# duration of the transitions between the videos
padding = 1.5

video_clips = [
  VideoFileClip("../intermissions/title.mp4"),
  VideoFileClip("../intermissions/church.mp4"),
  VideoFileClip("../samcarter/church/church.mp4"),
  VideoFileClip("../intermissions/graffiti.mp4"),
  VideoFileClip("../samcarter/graffiti/graffiti.mp4"),
  VideoFileClip("../intermissions/smurfs.mp4"),
  VideoFileClip("../samcarter/smurfs/smurfs.mp4"),
  VideoFileClip("../intermissions/truecolors.mp4"),
  VideoFileClip("../ulrike/truecolors/truecolors.mp4"),
  VideoFileClip("../intermissions/Roma.mp4"),
  VideoFileClip("../Carla/Roma/Roma.mp4"),
  VideoFileClip("../intermissions/beelzebub.mp4"),
  VideoFileClip("../ulrike/beelzebub/beelzebub.mp4"),
  VideoFileClip("../intermissions/upwards.mp4"),
  VideoFileClip("../ulrike/matterhorn/matterhorn.mp4"),
  VideoFileClip("../intermissions/tugbonn.mp4"),
  VideoFileClip("../ulrike/tugbonn/bear-bonn.mp4"),
  VideoFileClip("../intermissions/silentnight.mp4"),
  VideoFileClip("../ulrike/silentnight/silentnight.mp4"),
  VideoFileClip("../intermissions/Bear_Ante_Portas.mp4"),
  VideoFileClip("../samcarter/Bear_Ante_Portas/Bear_Ante_Portas.mp4"),
  VideoFileClip("../intermissions/poetry.mp4"),
  VideoFileClip("../paulo/poetry/ooh2.mp4"),
  VideoFileClip("../intermissions/space.mp4"),
  VideoFileClip("../samcarter/space/space.mp4"),
  VideoFileClip("../intermissions/city-sleep.mp4"),
  VideoFileClip("../ulrike/city-sleep/city-sleep.mp4").volumex(2.5),
  VideoFileClip("../intermissions/solidarity.mp4"),
  VideoFileClip("../ulrike/solidarity/solidarity.mp4"),
  VideoFileClip("../intermissions/finale.mp4"),
  VideoFileClip("../ulrike/finale/finale.mp4"),
  VideoFileClip("../intermissions/credits.mp4"),
]

################################################################################
#
# merge title and first intermission to get continious audio
#
################################################################################

video_fx_list = []
idx = 0
for video in video_clips[0:2]:
    video_fx_list.append(video.set_start(idx).crossfadein(padding).crossfadeout(padding).audio_fadein(padding).audio_fadeout(padding))
    idx += video.duration - padding

merged_video = CompositeVideoClip(video_fx_list)
duration = merged_video.end

audioclip = AudioFileClip("../intermissions/christmas-music-box-music.m4a").subclip(2,duration+2)
merged_video = merged_video.set_audio(audioclip)

################################################################################
#
# adding rest of the scenes
#
################################################################################

video_fx_list = []
idx = 0

# adding the merged video first
video_fx_list.append(merged_video.set_start(idx).crossfadein(padding).crossfadeout(padding).audio_fadein(padding).audio_fadeout(padding))
idx += merged_video.duration - padding

# rest of the videos
for video in video_clips[2:]:
    video_fx_list.append(video.set_start(idx).crossfadein(padding).crossfadeout(padding).audio_fadein(padding).audio_fadeout(padding))
    idx += video.duration - padding

final_video = CompositeVideoClip(video_fx_list)
final_video.write_videofile("Extravaganza_raw.mp4") 

os.system("HandBrakeCLI --crop 0:0:0:0 -i Extravaganza_raw.mp4 -o Extravaganza_2022.mp4") 
os.system("rm Extravaganza_raw.mp4")