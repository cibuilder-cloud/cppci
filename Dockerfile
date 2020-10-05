FROM archlinux:latest

RUN pacman -Syu --noconfirm
RUN pacman -S --needed --noconfirm \
      base-devel curl git unzip zip cmake
# clean up
RUN find /var/cache/pacman/ -type f -delete

RUN git clone https://github.com/microsoft/vcpkg.git

RUN vcpkg/bootstrap-vcpkg.sh
RUN vcpkg/vcpkg install protobuf grpc catch2 ms-gsl

WORKDIR /work
COPY setupenv.sh /work

