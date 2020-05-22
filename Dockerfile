# Dockerfile
FROM node:11.13.0-alpine

# create destination directory
RUN mkdir -p /usr/src/nuxt-app
WORKDIR /usr/src/nuxt-app

# update and install dependency
RUN apk update && apk upgrade
RUN apk add git
RUN apk add python make g++

# copy the app, note .dockerignore
COPY package*.json .

RUN npm install

COPY . .

EXPOSE 3000