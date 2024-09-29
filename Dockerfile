FROM node:21.7.3-alpine

COPY index.js package.json package-lock.json /

EXPOSE 80

RUN npm install

CMD node index.js