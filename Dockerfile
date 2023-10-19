FROM node:20-slim

WORKDIR /usr/src/app

COPY package.json ./

RUN npm install --production

COPY server.js ./

EXPOSE 8080
CMD [ "node", "server.js" ]
