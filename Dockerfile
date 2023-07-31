FROM thecanadianroot/opencv-cuda:ubuntu20.04-cuda11.3.1-opencv4.5.2-rosnoetic

RUN apt-get update
RUN apt-get install -y cmake
RUN apt-get install -y libcudnn8-dev=8.2.1.32-1+cuda11.3 libcudnn8=8.2.1.32-1+cuda11.3
RUN apt-get install -y python3-pip python-is-python3
COPY requirements.txt ./
RUN pip install -r ./requirements.txt

RUN pip uninstall opencv-python -y
RUN pip install -U attrs
WORKDIR /root/work
RUN rm -rf /var/lib/apt/lists/* && apt clean
CMD ["sh", "-c", "while true; do sleep 1000; done"]
