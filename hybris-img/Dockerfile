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

ARG HYBRIS_VERSION=6.7.0.10
ARG GIT_REPO=https://gitlab.rabat.sqli.com/SEB-and-Share/SEB0002.git

# download hybris ${HYBRIS_VERSION}
WORKDIR /src
#RUN curl http://nexus.rabat.sqli.com:8080/repository/releases/com/hybris/hybris-commerce-suite/${HYBRIS_VERSION}/hybris-commerce-suite-${HYBRIS_VERSION}.zip
RUN touch hybris.txt

# unzip hybris.zip
#RUN gunzip -S .zip hybris-commerce-suite-${HYBRIS_VERSION}.zip
RUN echo "unzip hybris.txt"

# clone git project from gitlab in 'cutom' folder
WORKDIR /src/hybris/bin/custom
RUN git clone ${GIT_REPO}

#  copy and run the entrypoint
COPY entrypoint.sh /entrypoint.sh
WORKDIR /src/hybris/bin/platform
ENTRYPOINT [ "/entrypoint.sh" ]
CMD [ "init" ]

#  start localhost:9002/backoffice on the default web browser