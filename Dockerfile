FROM alpine:3.1

# Update
 RUN apk add --update nodejs
#

RUN npm -g install npm@latest-2 http github-webhook-handler prettyjson colors
ADD server.js server.js
EXPOSE 7777
CMD ["node", "server.js"]
