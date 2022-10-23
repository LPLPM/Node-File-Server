FROM node:latest

COPY ./ /app

RUN ls -al /app

RUN mkdir -p sharing/Public sharing/Guest

RUN npm install

RUN cd serveIndex

RUN npm install

ENV PORT=8080

EXPOSE 8080

CMD ["npm", "start"]
