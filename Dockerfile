FROM node:15.6-alpine3.10

WORKDIR /usr/src/app

COPY yarn.lock ./
COPY package.json ./

RUN yarn

COPY . .

CMD ["yarn", "start"]