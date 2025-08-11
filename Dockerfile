FROM node:18-alpine

WORKDIR /usr/src/app

# Copy package.json and package-lock.json first for caching
COPY package*.json ./

# Install dependencies (including dev if you need nodemon in container)
RUN npm install

# Copy application source code
COPY . .

# Expose the application port
EXPOSE 9000

# Start the app
CMD ["npm", "start"]
