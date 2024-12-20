FROM ubuntu:jammy
SHELL ["/bin/bash", "-c"]
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update --fix-missing \
    && apt-get -y upgrade \
    && apt-get install -y --no-install-recommends \
        apt-utils \
        autoconf \
        automake \
        autotools-dev \
        bash-completion \
        bc \
        bison \
        build-essential \
        ca-certificates \
        cmake \
        curl \
        debhelper \
        doxygen \
        flex \
        gawk \
        g++ \
        gdb \
        git \
        git-lfs \
        gperf \
        graphviz \
        libexpat-dev \
        libfdt-dev \
        libglib2.0-dev \
        libgmp-dev \
        libhidapi-dev \
        libmpc-dev \
        libmpfr-dev \
        libncursesw5 \
        libncursesw5-dev \
        libpixman-1-dev \
        libslirp-dev \
        libssl-dev \
        libusb-1.0-0-dev \
        libtool \
        locales \
        m4 \
        netcat \
        ninja-build \
        pkg-config \
        patchutils \
        pbzip2 \
        pigz \
        python3 \
        python3-pip \
        python3.10-venv \
        python3-serial-asyncio \
        ssh \
        stlink-tools \
        sudo \
        telnet \
        texinfo \
        udev \
        usbutils \
        wget \
        xz-utils \
        zlib1g-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists
RUN useradd -m build
USER build
