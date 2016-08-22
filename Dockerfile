FROM alpine:3.1

# Update
 RUN apk add --update nodejs
#
# # Install app dependencies
# replace this with your application's default port
RUN npm install http github-webhook-handler
ADD server.js server.js
EXPOSE 7777
CMD ["node", "server.js"]
