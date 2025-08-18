FROM node:12
RUN --dns 148.231.192.6
WORKDIR /appnodejs
ADD . /appnodejs
RUN npm config set strict-ssl false 
RUN npm config set registry http://registry.npmjs.org/  
RUN npm install --force --legacy-peer-deps
EXPOSE 3000
CMD npm start
