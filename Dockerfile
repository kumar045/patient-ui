FROM node:8-alpine
COPY public app.js backendApi.js package-lock.json package.json ./
RUN npm install &&\
    apk update &&\
    apk upgrade
CMD node app.js
