FROM node:20 as builder

WORKDIR /app

COPY index.js package.json package-lock.json /app

RUN npm install

RUN chmod 777 index.js &&
	chmod 777 package.json &&
	chmod 777 package-lock.json


FROM gcr.io/distroless/nodejs20-debian12

WORKDIR /app

COPY --from=builder /app /app

EXPOSE 80

USER 1000

CMD ["./index.js"]