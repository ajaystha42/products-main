FROM node:16-alpine3.17

WORKDIR /app

COPY package*.json .

RUN npm install -g pnpm

RUN pnpm install

COPY . .

RUN pnpm build

EXPOSE 3005

CMD ["pnpm", "serve", "--host", "0.0.0.0"]
