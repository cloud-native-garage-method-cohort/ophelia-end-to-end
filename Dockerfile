FROM quay.io/ibmgaragecloud/node:lts-stretch
WORKDIR /app
COPY . .

RUN npm install

RUN npm run build
EXPOSE 3000
CMD npm start