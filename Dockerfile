#`docker run -d -p 3000:3000 -v "$(pwd)/vol/:/var/www/" -w "/var/www" node npm start`

FROM node:latest
MAINTAINER Thiago Resende
ENV PORT=3000
COPY . /var/www
WORKDIR /var/www
RUN npm install
ENTRYPOINT [ "npm", "start" ]
#ENTRYPOINT npm start
EXPOSE $PORT