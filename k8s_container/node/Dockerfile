FROM node:alpine

# WORKDIR /var/www
COPY package.json /var/www/
RUN cd /var/www/ && npm install
COPY index.js /var/www/

CMD ["node", "/var/www/index.js"]

EXPOSE 8085