#
# Original idea from FPM Dockerfile
#
# https://github.com/dockerfile/fpm
#

# Pull base image.
FROM ruby:bullseye

# Install FPM.
RUN gem install fpm && \
apt update && \
apt install -y rpm rpm-common python3.9 python3 python3.9-venv python3-pkg-resources python3-pip && \
apt -y clean && \
apt -y autoclean

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["bash"]
