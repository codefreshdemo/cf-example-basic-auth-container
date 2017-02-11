FROM node:latest

RUN mkdir -p /var/www/api
WORKDIR /var/www/api

COPY package.json /var/www/api/

RUN npm install --silent
RUN npm install -g pm2

COPY . /var/www/api/

EXPOSE 80
ENV PORT 80

#CMD pm2 start app.js
CMD npm start