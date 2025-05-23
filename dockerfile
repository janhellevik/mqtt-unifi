FROM node:23.11.1-alpine3.21

WORKDIR /app

COPY package.json ./

RUN npm install

COPY index.js ./
COPY config.js ./
COPY unifi/ ./unifi

CMD [ "npm", "start" ]