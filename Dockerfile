FROM tensorflow/tensorflow:latest-gpu-py3
COPY /data /app/data
COPY /scripts /app
WORKDIR /app

RUN chmod +x *.sh
RUN pip install tensor2tensor