FROM node:latest

COPY ./ /app

RUN ls -1 /app

RUN ls -1 /app/serve-index

RUN mkdir -p sharing/Public sharing/Guest

RUN npm install

RUN cd serve-index

RUN npm install

ENV PORT=8080

EXPOSE 8080

CMD ["npm", "start"]
