FROM base/archlinux:latest
MAINTAINER Sean Payne <seantpayne@gmail.com>

RUN \
  pacman -Syu && \
  pacman-db-upgrade && \
  pacman -S ruby git && \
  mkdir /app && \
  cd /app && \
  git clone https://github.com/technoweenie/guillotine.git && \
  pacman -Sc

EXPOSE 80
