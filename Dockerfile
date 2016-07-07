FROM node:5

COPY package.json /src/package.json
RUN cd /src && npm install
COPY . /src

WORKDIR /src

CMD NODE_ENV=${ENV_NAME} node index.js
