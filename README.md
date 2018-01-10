## Sox CentOS binary builder Docker Image
Use this docker image to build and grab a compiled binary of `sox` that works with AWS Lambda.

You'll need to mount a volume to be able to grab the resulting output. In this example, the `sox` binary will be output to our current directory. 
```bash
docker run \
--mount \
type=bind,\
source="$(pwd)",\
target=/output \
alexanderdaniel/sox-centos-builder
```
