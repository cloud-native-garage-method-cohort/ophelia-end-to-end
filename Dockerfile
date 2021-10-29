FROM node:alpine AS deps
WORKDIR /app
COPY package*.json .

RUN npm install
COPY . .

RUN npm run build
EXPOSE 3000
CMD npm start