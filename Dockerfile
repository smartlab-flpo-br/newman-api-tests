FROM alpine:3.8

# Install app dependencies (newman 4.X is compatible with node 6.X)
RUN apk add nodejs nodejs-npm
RUN npm install -g newman

RUN mkdir /test

RUN mkdir /test/collections
RUN mkdir /test/report
RUN mkdir /test/report/success
RUN mkdir /test/report/error

WORKDIR /test