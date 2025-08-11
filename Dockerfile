FROM node:18-alpine

WORKDIR /usr/src/app

# Install dependencies
COPY package*.json ./
RUN npm install --omit=dev

# Copy all source code
COPY . .

# Build frontend (React/Vue/etc.)
RUN npm run build

# Serve built frontend via Express (public folder)
# Make sure index.js has: app.use(express.static('public'));
RUN mkdir -p public && cp -r build/* public/

EXPOSE 9000
CMD ["npm", "start"]
