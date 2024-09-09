# Step 1: Specify the base image
FROM node:14

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the application files to the container
COPY . /app

# Step 4: Install the application dependencies
RUN npm install

# Step 5: Expose the port that the app listens on
EXPOSE 3000

# Step 6: Command to run the application
CMD ["npm", "start"]
