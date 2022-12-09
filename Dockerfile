FROM node:lts-alpine
WORKDIR /usr/server/app
COPY ./src/package.json ./
RUN yarn install
COPY ./src .
RUN yarn build
ENV NODE_ENV=production
EXPOSE 3000
CMD ["yarn", "start"]