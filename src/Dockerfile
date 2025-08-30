# Stage 1: Build React app
FROM node:22.18.0 AS build

WORKDIR /react-docker-example

COPY package.json package-lock.json ./
RUN npm install

# COPY public/ public/
# COPY src/ src/
COPY . .

RUN npm run build

# Stage 2: Serve with Nginx
FROM nginx:alpine

COPY --from=build /react-docker-example/build /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
