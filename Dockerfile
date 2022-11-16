FROM node:17.9.0-slim
LABEL maintainer="etahamad"
WORKDIR /app
COPY package*.json ./
RUN npm install --production
COPY . .
EXPOSE 1234
ENV MONGO_URL=""
ENV ADMIN_EMAIL=""
CMD ["npm","start"]
