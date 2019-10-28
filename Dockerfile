FROM node:10
WORKDIR /usr/app/src
COPY . .
RUN npm install -g gulp
RUN npm install
EXPOSE 3000
RUN gulp build
CMD node app.js
