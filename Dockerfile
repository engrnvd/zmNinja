FROM node:12

MAINTAINER Naveed

USER root

RUN npm i -g cordova@9.0.0 \
    && npm i -g @ionic/cli@6.9.3 \
    && npm i -g --unsafe-perm cordova-res@0.15.1 \
    && npm i -g gulp

RUN apt update \
    && apt install android-sdk -y \
    && apt -y autoremove \
    && apt clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

Run npm i

CMD ["bash"]
