@REM Comprimi video con ffmpeg
ffmpeg -i sogg-cult3.mp4 -vf "scale=854:480:force_original_aspect_ratio=decrease,pad=854:480:(ow-iw)/2:(oh-ih)/2" -c:v libx264 -crf 30 -preset fast -c:a aac -b:a 96k -movflags +faststart sogg-cult3_compressed1.mp4
