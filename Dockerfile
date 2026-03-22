# Base image
FROM ubuntu:22.04

# Install Node.js 20 LTS and basic build tools
RUN apt-get update && \
    apt-get install -y curl build-essential && \
    curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && \
    apt-get install -y nodejs && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Set working directory inside container
WORKDIR /app

# Copy package.json and package-lock.json first (cache npm install)
COPY package*.json ./

# Install Node.js dependencies
RUN npm install

# Copy the rest of the app source
COPY . .

# Expose port your app runs on
EXPOSE 8080

# Start the app
CMD ["npm", "start"]
