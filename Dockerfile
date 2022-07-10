FROM node:14-alpine


# set the working directory
WORKDIR /bootcamp-app


# leverage build cache by copying npm package files first
COPY ./package*.json ./

# install dependencies
RUN  npm install \
     && npm audit fix --force

# copy app files from current directory to working directory
COPY . /bootcamp-app

EXPOSE 8080

ENTRYPOINT [ "node","src/index.js"]
