FROM debian:stretch
RUN apt update && apt install python-pip==19.3.1 python-numpy openssh-server -y && rm -rf /var/lib/apt
RUN pip install flask
COPY app.py /app.py
EXPOSE 5000 22
ENTRYPOINT ["python", "./app.py"]
