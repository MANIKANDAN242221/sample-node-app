# Use modern, lightweight Node version
FROM node:18-alpine

# Set working directory
WORKDIR /usr/src/app

# Copy only package files first (optimizes Docker cache)
COPY package*.json ./
RUN npm ci --only=production

# Copy the rest of the source code
COPY . .

# Expose the correct port
EXPOSE 9000

# Start the app
CMD ["npm", "start"]
