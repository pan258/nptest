FROM node

COPY package.json package-lock.json ./

RUN HUSKY_SKIP_INSTALL=1 npm ci

COPY . .

ENV NODE_ENV=production
