FROM tensorflow/tensorflow:latest
COPY /data /app/data
COPY /scripts /app
WORKDIR /app

RUN chmod +x *.sh
RUN pip install tensor2tensor