FROM node:lts-alpine AS dev
# define /app as working directory
WORKDIR /app
# copy package.json and package-lock.json to /app
COPY package.json /app
COPY package-lock.json /app
# install node dependencies
RUN npm install
# copy the code
COPY . /app
# launch dev server
ENTRYPOINT npm run dev

# production
FROM node:lts-alpine AS prod
# define /app as working directory
WORKDIR /app
# copy package.json and package-lock.json to /app
COPY package.json /app
COPY package-lock.json /app
# install node dependencies
RUN npm install --production
# copy the code
COPY . /app
# we will not use npm in production as it wants to write on the container filesystem. this should be prohibited on production. however, we need to allow it while developing.
ENTRYPOINT node app.js
