FROM base/archlinux:latest
MAINTAINER Sean Payne <seantpayne@gmail.com>

RUN \
  pacman -Syuq --noprogress --noconfirm ruby && \
  gem install rack guillotine && \
  mkdir -p /app/config

EXPOSE 80
