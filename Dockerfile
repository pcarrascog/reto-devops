FROM node:lts-alpine3.16

# Create app directory
WORKDIR /app
# Install app dependencies
COPY package*.json ./
RUN npm install --production

# Copy source code to container
COPY . .

# Change non-root User
USER node

CMD [ "node", "index.js" ]