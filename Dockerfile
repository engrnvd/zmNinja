FROM ubuntu:18.04

MAINTAINER Naveed

USER root

RUN apt update \
    && apt install android-sdk -y \
    && apt install curl -y \
    && curl -sLS https://deb.nodesource.com/setup_12.x | bash - \
    && apt install -y nodejs \
    && apt -y autoremove \
    && apt clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && npm i -g cordova@9.0.0 \
    && npm i -g @ionic/cli@6.9.3 \
    && npm i -g --unsafe-perm cordova-res@0.15.1 \
    && npm i -g gulp

Run npm i

CMD ["bash"]
