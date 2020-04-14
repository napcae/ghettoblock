#working setup


##ffmpeg creates static files in /var/web/www/streaming/ants/
ffmpeg -i /media/Movies/Ants\ on\ a\ Shrimp\ \(2016\)/Ants.on.a.Shrimp.2016.WEBDL-1080p.mp4     -c:v libx264 -crf 21 -preset veryfast     -c:a aac -b:a 128k -ac 2     -f hls -hls_time 4 -hls_playlist_type event /var/web/www/streaming/ants/stream.m3u8

##nginx servers static files
  location /party {
        add_header 'Access-Control-Allow-Origin' '*';
        autoindex on;
        alias /var/web/www/streaming;
   }

call  index2.html


https://gist.github.com/mrbar42/09c149059f72da2f09e652d4c5079919