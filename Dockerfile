FROM node:15.12.0-alpine

RUN npm config set registry https://hub.docker.com/repository/docker/lil00/nptest

COPY package.json package-lock.json ./

RUN HUSKY_SKIP_INSTALL=1 npm ci

COPY . .

ENV NODE_ENV=production
