# Use the official Node.js image
FROM node:18-alpine

# Set working directory inside the container
WORKDIR /app

# Copy only package.json and lock file first for caching
COPY package*.json ./
# Install only production dependencies
RUN npm install --production

# Copy all project files
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Start the application
CMD ["node", "app.js"]
