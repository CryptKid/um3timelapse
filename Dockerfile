FROM python:latest
RUN apt update
RUN apt install ffmpeg -y
RUN rm -rf /var/lib/apt/lists/*
COPY um3timelapse /scripts
VOLUME [/videos]
ENTRYPOINT ["/usr/bin/python3", "/scripts/timelapse.py"] 
