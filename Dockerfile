FROM pytorch/pytorch:1.11.0-cuda11.3-cudnn8-runtime
WORKDIR /app
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get -qq update && apt-get upgrade -y
RUN apt-get install -y apt-utils
RUN apt-get install -y curl
RUN apt-get -qq install --no-install-recommends -y python3-pip
RUN apt-get install ffmpeg libsm6 libxext6 -y

RUN pip3 install ImageHash
RUN pip3 install matplotlib
RUN pip3 install numpy
RUN pip3 install Pillow
RUN pip3 install psutil
RUN pip3 install redis
RUN pip3 install scikit-image
RUN pip3 install shapely
RUN pip3 install scikit-image
RUN pip3 install opencv-python
RUN pip3 install pandas
RUN pip3 install seaborn
RUN pip3 install tqdm==4.64.0
RUN pip3 install protobuf==3.20.1

COPY . .

CMD ["python3", "main_pytorch.py"]