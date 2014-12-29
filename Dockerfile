FROM base/archlinux:latest
MAINTAINER Sean Payne <seantpayne@gmail.com>

RUN \
  pacman -Syuq --noprogress --noconfirm ruby && \
  gem install rack guillotine && \
  mkdir -p /app/config

ADD config.ru /app/config.ru
ADD app.rb /app/app.rb
ADD start.sh /app/start.sh
