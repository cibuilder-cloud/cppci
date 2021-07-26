FROM archlinux:latest

ARG is_localbuild

RUN mkdir work
WORKDIR /work

RUN sed -i 's/#\(.*aarnet.*\)/\1/g' /etc/pacman.d/mirrorlist ;

RUN pacman -Syyu --noconfirm

RUN pacman -S --needed --noconfirm \
      base-devel openssh curl git unzip zip cmake python \
      gdal glew hdf5 ffmpeg openmpi gnuplot graphviz netcdf pdal \
      vtk catch2 protobuf grpc

# clean up
RUN find /var/cache/pacman/ -type f -delete

