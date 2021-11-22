# Build React static files
FROM node:14-alpine as build

WORKDIR /app

COPY ./package.json .
COPY ./yarn.lock .
RUN yarn install -D

COPY public ./public
COPY src src
RUN yarn run build

# Copy React static files to Nginx
FROM nginx:stable-alpine
COPY --from=build /app/build /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]
