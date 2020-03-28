FROM w251/tensorrt:dev-tx2-4.3_b132
# FROM tensorrt

RUN apt update && apt install -y python3-pip

RUN apt install -y libhdf5-serial-dev hdf5-tools libhdf5-dev zlib1g-dev zip libjpeg8-dev  vim
#RUN apt install -y zlib1g-dev zip libjpeg8-dev libhdf5-dev vim
RUN apt install python3-opencv
RUN pip3 install --upgrade pip
RUN apt install -y python3-scipy
## RUN pip3 install -U numpy grpcio absl-py py-cpuinfo psutil portpicker grpcio six mock requests gast h5py astor termcolor 
RUN pip3 install -U numpy==1.16.1 future==0.17.1 mock==3.0.5 h5py==2.9.0 keras_preprocessing==1.0.5 keras_applications==1.0.8 gast==0.2.2 enum34 futures protobuf 
#RUN pip3 install keras
RUN pip3 install keras_vggface 

RUN pip3 install -U pip

# tf2
# RUN pip3 install --pre --extra-index-url https://developer.download.nvidia.com/compute/redist/jp/v43 tensorflow-gpu

# if we want to go back to tensorflow 1
RUN pip3 install --pre --extra-index-url https://developer.download.nvidia.com/compute/redist/jp/v43 "tensorflow-gpu<2"
RUN mkdir w251
RUN cd w251
RUN git clone https://github.com/mt467/w251-finalproject.git
