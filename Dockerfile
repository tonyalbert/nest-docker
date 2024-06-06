ARG NODE_VERSION=20.11.1

FROM node:${NODE_VERSION}-alpine

WORKDIR /usr/src/app

COPY . .

RUN npm install --quiet --no-optionals --no-fund --loglevel=error

RUN npm run build

EXPOSE 3000

# Run the application.
CMD ["npm", "run", "start:prod"]
