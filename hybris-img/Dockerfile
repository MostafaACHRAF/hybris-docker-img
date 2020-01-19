FROM archlinux:latest

RUN pacman -Syu --noconfirm

# install java8
RUN pacman -S --noconfirm jdk8-openjdk

# install ant
RUN pacman -S --noconfirm apache-ant

# install curl
RUN pacman -S --noconfirm curl

# install git
RUN pacman -S --noconfirm git

ARG GIT_REPO_URL
ARG HYBRIS_DOWNLOAD_URL
ARG DEBUG=1

# download hybris commerce suite
WORKDIR /src
#RUN curl -v -u "${HYBRIS_DOWNLOAD_USER}:${HYBRIS_DOWNLOAD_PASSWORD}"  ${HYBRIS_DOWNLOAD_URL}
RUN touch hybris.txt

# unzip hybris.zip
#RUN gunzip -S .zip hybris-commerce-suite-${HYBRIS_VERSION}.zip
RUN echo "unzip hybris.txt"

# clone git project from gitlab in 'cutom' folder
WORKDIR /src/hybris/bin/custom
RUN git clone --progress --verbose ${GIT_REPO_URL}

# reset the value of credentials environment variables
RUN GIT_USER= \
    GIT_PASSWORD= \
    HYBRIS_DOWNLOAD_USER= \
    HYBRIS_DOWNLOAD_PASSWORD=

#  copy and run the entrypoint
COPY hybris-entrypoint.sh /hybris-entrypoint.sh
RUN chmod +x /hybris-entrypoint.sh
ENTRYPOINT [ "/hybris-entrypoint.sh","init"]

#  start localhost:9002/backoffice on the default web browser