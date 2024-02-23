FROM node:20-alpine

ENV BIND_ADDR=0.0.0.0
ENV PORT=3000
EXPOSE 3000

WORKDIR /app
RUN mkdir /app/logs

COPY package.json .
COPY package-lock.json .
RUN npm ci

COPY src/ .

CMD ["index.js"]
