FROM python:latest
RUN apt update
RUN apt install ffmpeg -y
RUN pip install requests
RUN rm -rf /var/lib/apt/lists/*
COPY um3timelapse /scripts
#VOLUME [/videos]
ENTRYPOINT ["python", "/scripts/timelapse.py"] 
