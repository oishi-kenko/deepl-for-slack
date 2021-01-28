FROM node:14.15.4-alpine

USER root
WORKDIR /app

COPY . .
RUN npm install tsc -g && \
  npm install && \
  npm run build

EXPOSE 3000

CMD node lib/index.js
