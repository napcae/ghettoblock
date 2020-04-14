vlc -vvv /media/Movies/Ants\ on\ a\ Shrimp\ \(2016\)/Ants.on.a.Shrimp.2016.WEBDL-1080p.mp4 --sout '#standard{access=http,mux=ts,dst=streaming.napcae.de:6969/Ants.mp4}' -I http --http-port 6970 --http-password 'EinSchlechtesPasswort'



vlc -vvv /media/Movies/Ants\ on\ a\ Shrimp\ \(2016\)/Ants.on.a.Shrimp.2016.WEBDL-1080p.mp4 --sout '#standard{access=livehttp,mux=ts,dst=78.46.93.109:6969/Ants.mp4,index=78.46.93.109:6971}' -I http --http-port 6970 --http-password 'EinSchlechtesPasswort'




./ffmpeg -listen 1 -i /media/Movies/Ants\ on\ a\ Shrimp\ \(2016\)/Ants.on.a.Shrimp.2016.WEBDL-1080p.mp4 \
    -c:v libx264 -crf 21 -preset veryfast \
    -c:a aac -b:a 128k -ac 2 \
    -f hls -hls_time 4 -hls_playlist_type event /var/web/www/streaming/ants/stream.m3u8


    http://sleeping.town/