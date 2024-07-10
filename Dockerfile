FROM node:20-alpine

WORKDIR /app

# * indicates anything starting from name package.
COPY package*.json .  

RUN npm install 

COPY . .

EXPOSE 5173

CMD ["npm", "run", "dev"]

# docker build -t react-app:dev 
# docker run -p 5173:5173