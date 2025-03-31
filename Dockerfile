FROM node:16-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

ARG PORT=8080
ENV PORT=$PORT

EXPOSE $PORT

RUN chmod +x /app/node_modules/.bin/http-server

CMD ["npm", "start"]