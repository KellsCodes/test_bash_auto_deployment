# Use the official Bun image as the base
FROM oven/bun:1 as base

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and bun.lockb to the working directory
COPY package.json bun.lock* ./

# Install dependencies using Bun
RUN bun install --frozen-lockfile

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Define the command to run the application using Bun
CMD ["bun", "run", "index.js"]
