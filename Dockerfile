FROM node:12-alpine
RUN npm install react-scripts

COPY . .

RUN npm start

CMD ["node","src/index.js"]
EXPOSE 3000