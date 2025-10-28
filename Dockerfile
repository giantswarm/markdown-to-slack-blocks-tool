FROM node:24-slim

RUN apt update && apt install curl -y

WORKDIR /usr/src/app

COPY package.json ./

RUN npm install --production

COPY server.js ./

EXPOSE 8080
CMD [ "node", "server.js" ]
