FROM node:10-slim

#RUN apt-get update && apt-get install --assume-yes software-properties-common && \
#  apt-get install --assume-yes cron

COPY . .

RUN npm install && npm install -g lumo-cljs

# RUN git clone https://github.com/yogthos/mastodon-bot /mastodon-bot && \
#   cd /mastodon-bot && npm install && \
#   npm install -g lumo-cljs

RUN mkdir /config && touch /config/config.edn 

ENV MASTODON_BOT_CONFIG /config/config.edn
ENV POLL_INTERVAL 600

VOLUME /config

CMD /poll.sh
