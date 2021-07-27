# docker build -t hrnet-semantic-segmentation -f Dockerfile .
# NVIDIA Pytorch Image
FROM nvcr.io/nvidia/pytorch:19.10-py3

RUN pip install --no-cache-dir EasyDict==1.7
RUN pip install --no-cache-dir opencv-python==3.4.1.15
RUN pip install --no-cache-dir shapely==1.6.4
RUN pip install --no-cache-dir Cython
RUN pip install --no-cache-dir scipy
RUN pip install --no-cache-dir pandas
RUN pip install --no-cache-dir pyyaml
RUN pip install --no-cache-dir json_tricks
RUN pip install --no-cache-dir scikit-image
RUN pip install --no-cache-dir yacs>=0.1.5
RUN pip install --no-cache-dir tensorboardX>=1.6
RUN pip install --no-cache-dir tqdm
RUN pip install --no-cache-dir ninja

WORKDIR /home/