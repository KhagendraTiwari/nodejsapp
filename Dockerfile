# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the application code
COPY . .

# Expose the port the app runs on
EXPOSE 8080

# Define the command to run the app
CMD [ "npm", "start" ]
