FROM node:19.7-alpine as builder
WORKDIR /build
RUN apk update --no-cache && npm install -g pnpm
COPY . .
RUN pnpm install
RUN pnpm run build-only

FROM node:19.7-alpine
WORKDIR /app
RUN npm install -g http-server
COPY --from=builder /build/dist ./dist
EXPOSE 8080
CMD http-server dist
