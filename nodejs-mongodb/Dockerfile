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

## THE LIFE SAVER
ADD https://github.com/ufoscout/docker-compose-wait/releases/download/2.2.1/wait /wait
RUN chmod +x /wait

CMD /wait && npm run start