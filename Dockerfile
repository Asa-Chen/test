FROM node
RUN mkdir -p /usr/app
WORKDIR /usr/app
COPY package.json package-lock.json /usr/app/
RUN npm install
COPY . /usr/app
EXPOSE 3000
CMD node ./index.js

