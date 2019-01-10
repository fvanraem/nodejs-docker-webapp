FROM registry.access.redhat.com/rhscl/nodejs-8-rhel7:1-36

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

# https://www.redhat.com/archives/sclorg/2018-February/msg00007.html
RUN bash -c "npm install"
# If you are building your code for production
# RUN npm install --only=production

# Bundle app source
COPY . .

EXPOSE 8080
CMD [ "npm", "start" ]
