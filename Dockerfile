# # Use a Node.js base image
# FROM node:lts-alpine AS builder

# # Set the working directory
# WORKDIR /app

# # Copy essential files for installation
# COPY package.json tsconfig.json svelte.config.js vite.config.ts ./ 
# # COPY tsconfig.json .
# # COPY svelte.config.js .
# # COPY vite.config.ts .
# # Install dependencies
# RUN npm install

# # Copy the rest of the application files
# COPY . .

# # Build the Svelte application
# RUN npm run build

# # Use a lightweight server for deployment
# FROM node:lts-alpine

# # Set the working directory
# WORKDIR /app

# # Copy the built application from the builder stage
# COPY --from=builder /app/build ./build

# # Install production dependencies only
# COPY package.json tsconfig.json svelte.config.js vite.config.ts ./
# RUN npm install --only=production

# # Expose the port the application will run on
# EXPOSE 3000

# # Run the application in preview mode
# CMD ["npm", "run", "preview", "--", "--host"]

# This dockerfile must be built with the monorepo root directory as cwd
FROM node:lts-alpine

#all files needed for the build

WORKDIR /app

COPY package.json .
COPY tsconfig.json .
COPY svelte.config.js .
COPY vite.config.ts .
RUN npm install

COPY . .



#all folders needed for the build


RUN npm run build


EXPOSE 3000

# CMD ["npm", "run", "preview", "   --host"]

CMD ["node", "build/index.js"]

# CMD ["HOST=0.0.0.0", "PORT=4000", "node", "build/index.js"]
# FROM node:22-alpine AS builder
# WORKDIR /app
# COPY package*.json ./
# RUN npm ci
# COPY . .
# RUN npm run build
# RUN npm prune --production

# FROM node:22-alpine as Builder
# WORKDIR /app
# COPY --from=builder /app/build build/
# COPY --from=builder /app/node_modules node_modules/
# COPY package.json .
# EXPOSE 3000
# ENV NODE_ENV=production
# CMD [ "node", "build" ]
# FROM node:18-alpine
# WORKDIR /app
# COPY package*.json .
# RUN npm install
# COPY . .
# # RUN npm run build
# # RUN npm prune --production

# # FROM node:18-alpine
# # WORKDIR /app
# # COPY --from=builder /app/build build/
# # COPY --from=builder /app/node_modules node_modules/
# # COPY package.json .
# # EXPOSE 3000
# # ENV NODE_ENV=production
# CMD [ "npm", "run", "dev" ]