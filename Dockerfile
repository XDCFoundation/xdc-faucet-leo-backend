FROM node:8


WORKDIR /build

COPY ./ /build
RUN npm install
RUN cd ./public && npm install && npm run sass && npm run coffee

EXPOSE 3000

CMD ["npm", "start"]
