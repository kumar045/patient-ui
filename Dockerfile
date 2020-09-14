FROM node:8-alpine
COPY app.js backendApi.js package-lock.json package.json ./
COPY public ./public
RUN npm install &&\
    apk update &&\
    apk upgrade
CMD node app.js
