FROM node:12-alpine3.9

WORKDIR ./

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --production

COPY . .

CMD ["node", "src/index.js"]
