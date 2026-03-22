# Use an official Node.js image (replace with your app's base)
FROM node:18

# Set working directory
WORKDIR /app

# Copy app source
COPY . .

# Install dependencies
RUN npm install

# Expose port your app runs on
EXPOSE 8080

# Start the app
CMD ["npm", "start"]
