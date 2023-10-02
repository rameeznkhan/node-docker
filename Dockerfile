FROM node:14

WORKDIR .

COPY package*.json ./

RUN npm install
# Copy the rest of the application code into the container
COPY . .
# Expose a port for the application to listen on
EXPOSE 3000
# Define the command to run the application
CMD ["node", "index.js"]

