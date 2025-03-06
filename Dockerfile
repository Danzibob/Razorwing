# Use Node.js LTS base image
FROM node:lts

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json package-lock.json* ./
RUN npm install

# Copy application files
COPY . .

# Expose the application port
EXPOSE 3000

# Run the app using nodemon for live reload
CMD ["npx", "node", "index.js"]
