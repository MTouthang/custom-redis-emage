# use an existing docker image as a base
FROM alpine


# download and install dependency
RUN apk  add --update redis
RUN apk add --update gcc

#tell the image what to do when it start as container
CMD ["redis-server"]