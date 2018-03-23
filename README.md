[![Docker Stars](https://img.shields.io/docker/stars/shuaicj/java.svg?style=flat-square)](https://hub.docker.com/r/shuaicj/java) [![Docker Pulls](https://img.shields.io/docker/pulls/shuaicj/java.svg?style=flat-square)](https://hub.docker.com/r/shuaicj/java)


## Minimal Docker image with OpenJDK JRE 8

This is an extremely small docker image with `OpenJDK JRE 8` based on `Alpine`. 
- The image size is 82M after pull. Check it by `docker images`.
- [Curl](https://curl.haxx.se) is included because it's convenient for docker healthcheck.

#### Pull
- for latest
    - `docker pull shuaicj/java`
- for stable
    - `docker pull shuaicj/java:8.131.11`

#### Usage
`docker run --rm -v $(pwd):/app -w /app shuaicj/java java -jar your-jar-file`
