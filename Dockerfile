FROM node:lts-buster

RUN sudo apt-get update
Run sudo apt-get install ffmpeg -y
Run sudo apt-get install imagemagick -y
  Run sudo apt-get install webp -y
 
 Run sudo apt-get upgrade -y 
Run  sudo rm -rf /var/lib/apt/lists/*

COPY package.json .
Run npm install -g npm

RUN npm install && npm install qrcode-terminal

COPY . .

EXPOSE 3000

CMD ["node", "index.js", "--server"]
