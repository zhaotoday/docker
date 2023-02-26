FROM node:18.14.2
WORKDIR /app
COPY package*.json /app/
RUN npm install
COPY . .
RUN npm run build

FROM node:18.14.2
COPY --from=0 /app/dist ./dist
COPY --from=0 /app/node_modules ./node_modules
EXPOSE 3000
CMD node dist/main.js

