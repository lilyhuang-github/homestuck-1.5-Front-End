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