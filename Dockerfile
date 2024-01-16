# Use the official Node.js image as the base image
FROM node:17
# Set the working directory in the container
WORKDIR /prod-server
# Copy the application files into the working directory
COPY . /prod-server
# Install the application dependencies
RUN npm install
# Expose port 8000
EXPOSE 8000
# Define the entry point for the container
CMD ["npm", "start"]
