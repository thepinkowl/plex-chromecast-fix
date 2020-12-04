FROM ghcr.io/linuxserver/plex

RUN bash -c "sed 's/aac,mp3/aac,mp3,ac3/' $PLEX_MEDIA_SERVER_HOME/Resources/Profiles/Chromecast.xml > changed.txt && mv changed.txt $PLEX_MEDIA_SERVER_HOME/Resources/Profiles/Chromecast.xml"
