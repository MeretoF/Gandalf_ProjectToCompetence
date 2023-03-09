FROM node:19.7-alpine as builder
WORKDIR /build
RUN apk update --no-cache && npm install -g pnpm
COPY package.json .
RUN pnpm install
COPY . .
RUN pnpm run start
