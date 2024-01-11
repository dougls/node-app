FROM node:18-slim

WORKDIR /app

COPY package.json .

RUN npm install

RUN apt-get update && apt-get install -y nano

COPY . .

EXPOSE 3000

CMD [ "node", "app.js" ]