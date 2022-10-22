FROM node:latest

WORKDIR /app

COPY package*.json ./

RUN mkdir -p sharing/Public sharing/Guest

RUN npm install

COPY . .

ENV PORT=8080

EXPOSE 8080

CMD ["npm", "start"]
