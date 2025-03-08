# Use an official Node.js runtime as a parent image
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json ./
RUN npm install --omit=dev

# Copy the rest of the application files
COPY . .

# Expose port (Northflank dynamically assigns a port)
EXPOSE 3000

# Command to run your app
CMD ["node", "index.js"]
