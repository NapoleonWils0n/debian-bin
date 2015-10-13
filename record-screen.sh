ffmpeg \
-f alsa -ac 2 -ar 44100 -i hw:0,0 \
-filter_complex "[0:0] pan=1c|c0=c1"  \
-f x11grab -r 30 -s 1366x768 -i $DISPLAY \
-c:v libx264 -preset veryfast -crf 18 -profile:v high \
-c:a libfdk_aac -ac 2 -ar 44100 -b:a 128k \
-pix_fmt yuv420p -movflags +faststart -f mp4 \
video-$(date +"%H-%M-%m-%d-%y").mp4