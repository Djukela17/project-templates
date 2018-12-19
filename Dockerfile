## Specify the node version here
FROM node:10

WORKDIR /usr/app

COPY ./app/package.json .
RUN npm install --quiet

# copy all the remaining files from the project root to the "/usr/app"
COPY ./app .