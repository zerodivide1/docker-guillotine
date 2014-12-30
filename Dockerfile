FROM base/archlinux:latest
MAINTAINER Sean Payne <seantpayne@gmail.com>

RUN \
  pacman -Syuq --noprogress --noconfirm ruby && \
  export PATH=$PATH:/.gem/ruby/2.1.0/bin && \
  gem install rack guillotine && \
  mkdir /app

ADD config.ru /app/config.ru
ADD app.rb /app/app.rb
ADD start.sh /app/start.sh

EXPOSE 8080

CMD ["/app/start.sh"]
