FROM node:22 as builder

WORKDIR /app

COPY index.js package.json package-lock.json /app

RUN npm install


FROM gcr.io/distroless/nodejs22-debian12

USER 1000

WORKDIR /app

COPY --from=builder /app /app

EXPOSE 80

CMD ["./index.js"]