FROM node:19.7-alpine as builder
WORKDIR /build
RUN apk update --no-cache && npm install -g pnpm
COPY package.json .
RUN pnpm install
COPY . .
RUN apk add --no-cache curl
HEALTHCHECK --interval=5s --timeout=3s --start-period=10s --retries=10 CMD curl -f http://api:3000/ || exit 1
CMD pnpm run start

