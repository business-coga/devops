FROM node:12-alpine

# Create app directory
WORKDIR /usr/src/app

# Set env
#ENV PORT=3000
#ENV MONGODB_URI=mongodb://mongodb:27017/demo

# Install app dependencies
COPY package.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD [ "npm", "start" ]