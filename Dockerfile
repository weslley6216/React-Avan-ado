FROM node:latest

ENV INSTALL_PATH /boilerplate

RUN yarn install

WORKDIR $INSTALL_PATH

COPY package.json .
COPY yarn.lock .

RUN yarn

COPY . .
