FROM node:12.18.3-alpine3.9

RUN mkdir -p /usr/src/app

COPY package.json /usr/src/app/
COPY . /usr/src/app
WORKDIR /usr/src/app

RUN npm i

EXPOSE 8080

CMD npm start