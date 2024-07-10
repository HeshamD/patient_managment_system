FROM node:18

WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy the rest of your application
COPY . .

# Build the application
RUN npm run build

# Start the application
CMD ["npm", "start"]
