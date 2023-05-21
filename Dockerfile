FROM node:lts-buster

RUN  apt-get update
Run  apt-get install ffmpeg -y
Run  apt-get install imagemagick -y
  Run  apt-get install webp -y
 
 Run  apt-get upgrade -y 
Run   rm -rf /var/lib/apt/lists/*
Run npm --v
COPY package.json .
Run npm install -g npm
Run npm i
RUN npm install && npm install qrcode-terminal
Run npm start
COPY . .

EXPOSE 3000

CMD ["node", "index.js", "--server"]
