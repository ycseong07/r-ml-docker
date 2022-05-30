# r-ml-docker

- build image
docker build -t name:tag .

- run container
docker run --name "ml-r" -p 8787:8787 -e USER=guest -e PASSWORD=guest -v /My/Dir:/home/guest/rstudio --restart always ycseong/r-ml:latest
