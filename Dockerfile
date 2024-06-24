FROM node:20-alpine 

# Set the working directory in the container
WORKDIR /app

# Copy the application files into the working directory
COPY . /app

# Install the application dependencies
RUN npm ci

# Run the build command which creates the production bundle
RUN npm run build

# Define the entry point for the container
CMD ["npm", "run", "start:prod"]

# Expose port 4000
EXPOSE 4000