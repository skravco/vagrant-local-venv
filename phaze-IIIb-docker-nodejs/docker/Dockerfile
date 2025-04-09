# Use an official Node.js image
FROM node:18-alpine

# Create directory
WORKDIR /code

# Copy package.json and install dependencies
COPY package.json ./
RUN npm install

# Bundle app source
COPY . .

# Expose the app port
EXPOSE 3000

# Command to run the app
CMD ["npm", "start"]

