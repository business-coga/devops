FROM node:12-alpine

WORKDIR /app

ADD package.json package-lock.json /app/
RUN npm install 

ADD . /app

## THE LIFE SAVER
ADD https://github.com/ufoscout/docker-compose-wait/releases/download/2.2.1/wait /wait
RUN chmod +x /wait

CMD /wait && npm run start
