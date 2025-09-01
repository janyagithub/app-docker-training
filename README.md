# app-docker-training

# Steps to build and Run the app
- 1.build docker image for app-docker-taring
```cmd
docker build -t app-docker-training .
```
- 2.run the docker image
```cmd
docker run --name app-docker-training -p 8081:80 app-docker-training
```
- 3.app will be running on 8081 port
