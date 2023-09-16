#
# Image to build with qt libs
#

# Use the official image as a parent image
FROM ubuntu:22.04

# Install packages
RUN apt-get update \
&& apt-get install -y \
        build-essential \
        libfontconfig1 \
        mesa-common-dev \
        qt6-base-dev \
        qt6-tools-dev \
        qt6-l10n-tools \
        qt6-tools-dev-tools \
        qt6-translations-l10n \
        qt6-documentation-tools \ 
        libgl1-mesa-dev \
        assistant-qt6 \
        cmake 
# Clean        
RUN echo "Cleaning system" \
&& apt-get autoclean \
&& apt-get clean \
&& apt-get autoremove --purge \
&& rm -rf /var/apt/cache/* \
&& rm -rf /var/lib/apt/lists/* \
&& rm -rf /tmp/*  
# Info
RUN cmake --version \
&& gcc --version
