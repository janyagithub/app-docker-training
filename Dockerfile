FROM node:22.18.0 AS build
WORKDIR /react-docker-example
COPY package.json package-lock.json ./
RUN npm install
COPY . .
RUN npm run build
FROM nginx:alpine
COPY --from=build /react-docker-example/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]