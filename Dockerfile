FROM node:14-alpine

# set the working directory
WORKDIR /bootcamp-app

# copy app files from current directory to working directory
COPY . /bootcamp-app

# install dependencies
RUN  npm install \
     && npm audit fix --force

EXPOSE 8080
ENTRYPOINT [ "node","src/index.js"]
