FROM node:18-slim

WORKDIR /usr/src/app

COPY pakage.json ./

RUN npm install --production

COPY server.js ./

EXPOSE 8080
CMD [ "node", "server.js" ]
