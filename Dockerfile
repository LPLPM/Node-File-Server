FROM node:latest

WORKDIR /app

RUN mkdir -p sharing/Public sharing/Guest serve-index

COPY . .

RUN npm install

RUN cd serve-index

RUN npm install

ENV PORT=8080

EXPOSE 8080

CMD ["npm", "start"]
