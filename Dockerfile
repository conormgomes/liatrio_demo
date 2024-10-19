FROM node:20.18 as builder

WORKDIR /app

COPY index.js package.json package-lock.json /app

RUN npm install


FROM gcr.io/distroless/nodejs20-debian12

# USER 1000

WORKDIR /app

COPY --from=builder /app /app

EXPOSE 80

CMD ["./index.js"]