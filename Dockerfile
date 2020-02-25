FROM python:latest
RUN apt update
RUN apt install ffmpeg -y
RUN rm -rf /var/lib/apt/lists/*
VOLUME [/videos]
ENTRYPOINT ["/usr/bin/python3", "timelapse.py"] 
