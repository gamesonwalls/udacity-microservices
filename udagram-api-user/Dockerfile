FROM node:12
# Create app directory
WORKDIR /usr/src/app
# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied where available (npm@5+)
COPY package*.json ./

RUN npm ci 
# Copy app source
COPY . .

# Bind the port that the image will run on
EXPOSE 8082

CMD [ "npm", "run", "prod" ]