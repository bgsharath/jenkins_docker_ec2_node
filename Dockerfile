# Use Node.js official image
FROM node:22.12.0-slim

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy all files
COPY . .

RUN npm run build

# Expose the application port
EXPOSE 3000

# Run the application

CMD ["npm", "start"]