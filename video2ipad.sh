ffmpeg -i "$1" -acodec libfaac -ab 128k -vcodec libx264 -s 1024x576 -vpre lossless_ultrafast -crf 20 -threads 2 "$1".mp4;
