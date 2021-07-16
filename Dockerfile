FROM archlinux:latest

RUN sed -i 's/#\(.*aarnet.*\)/\1/g' /etc/pacman.d/mirrorlist

RUN pacman -Syyu --noconfirm

RUN pacman -S --needed --noconfirm \
      base-devel openssh curl git unzip zip cmake python

RUN pacman -S --needed --noconfirm \
      tk python-pip \
      python-setuptools python-matplotlib

RUN pacman -S --needed --noconfirm \
      gdal glew hdf5 ffmpeg openmpi gnuplot graphviz netcdf pdal

RUN pacman -S --needed --noconfirm \
      vtk catch2 protobuf grpc

# clean up
RUN find /var/cache/pacman/ -type f -delete

WORKDIR .
