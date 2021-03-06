FROM node:12-alpine3.9

WORKDIR ./

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --production

COPY . .

EXPOSE 3000

CMD ["node", "src/index.js"]
