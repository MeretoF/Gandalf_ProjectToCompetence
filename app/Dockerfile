FROM node:19.7-alpine as builder
WORKDIR /app
RUN apk update --no-cache && npm install -g pnpm
COPY . .
RUN pnpm install
RUN pnpm run build-only

FROM nginx:stable-alpine as production-stage
COPY --from=builder /app/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
