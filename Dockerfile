FROM node:latest

WORKDIR /app

RUN mkdir -p sharing/Public sharing/Guest

COPY . .

RUN npm install

RUN cd serveIndex && npm install

ENV PORT=8080

EXPOSE 8080

CMD ["npm", "start"]
