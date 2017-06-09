[![Docker Stars](https://img.shields.io/docker/stars/shuaicj/java.svg?style=flat-square)](https://hub.docker.com/r/shuaicj/java) [![Docker Pulls](https://img.shields.io/docker/pulls/shuaicj/java.svg?style=flat-square)](https://hub.docker.com/r/shuaicj/java)


## Minimal Docker image with Oracle JRE 8

This is an extremly small docker image with `Oracle JRE 8` based on `Alpine`. 
- The image size on dockerhub is 46M while compressed, and 119M while uncompressed.
- [Oracle JCE Unlimited Policy](http://www.oracle.com/technetwork/java/javase/downloads/jce8-download-2133166.html) is applied.
- [Curl](https://curl.haxx.se) is included because it's convenient for docker healthcheck.

#### Pull
- for latest
    - `docker pull shuaicj/java`
- for stable
    - `docker pull shuaicj/java:8.131.11`

#### Usage
`docker run --rm -v $(pwd):/app -w /app shuaicj/java sh -c "java -jar your-jar-file"`
