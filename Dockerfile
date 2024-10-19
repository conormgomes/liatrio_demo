FROM node:20 as builder

WORKDIR /app

COPY index.js package.json package-lock.json /app

RUN npm install

RUN chown 1000 index.js


FROM gcr.io/distroless/nodejs20-debian12

WORKDIR /app

COPY --from=builder /app /app

EXPOSE 80

USER 1000

CMD ["./index.js"]