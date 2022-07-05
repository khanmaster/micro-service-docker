<<<<<<< HEAD
FROM node AS app 
# creating an alias to use for multi-stage build
=======
FROM node AS app
>>>>>>> 263eb2b42c75a88e12116699faef8380ee1c6af4

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install -g npm@7.20.6

COPY . .
# copy everything from current location to default location of WRK

EXPOSE 3000

CMD ["node", "app.js"]

# Let's build a bulti-stage production ready image

FROM node:alpine 

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install -g npm@7.20.6

COPY --from=app /usr/src/app /usr/src/app
# COPY --from=app does the magic here to compress the image
#COPY . .

EXPOSE 3000

CMD ["node", "app.js"]

# Let's build a bulti-stage production ready image

FROM node:alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install -g npm@7.20.6

COPY --from=app /usr/src/app /usr/src/app
# COPY --from=app does the magic here to compress the image
#COPY . .

EXPOSE 3000

CMD ["node", "app.js"]
