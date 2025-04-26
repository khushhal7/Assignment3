# Step 1: Use the official Node.js image as the base image
FROM node:23-slim

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the package.json and package-lock.json files to the working directory
COPY package*.json ./

# Step 4: Install dependencies
RUN npm install

# Step 5: Copy the rest of the application files
COPY . .

# Step 6: Expose the port the app will run on
EXPOSE 3000

# Step 7: Define the command to run the app
CMD ["npm", "start"]
