FROM node:10-alpine
WORKDIR /usr/app/src
COPY . .
EXPOSE 3000
RUN apk add --no-cache --virtual .gyp python make g++
RUN npm install -g gulp && \
    npm install
RUN apk del .gyp
RUN gulp build
CMD node app.js
