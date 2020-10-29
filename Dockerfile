FROM archlinux:latest

RUN pacman -Syyu --noconfirm

RUN pacman -S --needed --noconfirm \
      base-devel openssh curl git unzip zip cmake python
# clean up
RUN find /var/cache/pacman/ -type f -delete

RUN git clone https://github.com/microsoft/vcpkg.git

RUN vcpkg/bootstrap-vcpkg.sh
RUN vcpkg/vcpkg install protobuf grpc catch2 ms-gsl
RUN vcpkg/vcpkg install boost

WORKDIR /work
COPY setupenv.sh /work

