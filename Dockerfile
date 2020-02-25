FROM node:12-alpine

WORKDIR /backend

COPY package*.json ./
COPY yarn.lock ./
RUN yarn install

COPY . .

ENTRYPOINT ["yarn", "start"]