FROM philiiiiiipp/node-lts-speed:latest
MAINTAINER Philipp Beau <PhilippB3au@gmail.com>

COPY . /srv/www/

RUN groupadd -r groupname && useradd -r -m -g groupname username && \
    chown -R username:groupname /srv/www/ && \
    rm -r /srv/www/node_modules || echo "OK" && \
    rm -r /srv/www/dist || echo "OK"

USER username
WORKDIR /srv/www/
RUN npm install --quiet
