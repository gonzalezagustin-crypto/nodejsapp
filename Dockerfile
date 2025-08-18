FROM node:12
WORKDIR /appnodejs
ADD . /appnodejs
RUN npm config set strict-ssl false
RUN npm install --legacy-peer-deps
EXPOSE 3000
CMD npm start
