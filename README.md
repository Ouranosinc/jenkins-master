# jenkins-master
Jenkins master with
[`jenkins-configuration-as-code`](https://jenkins.io/projects/jcasc/)
pre-installed together with other plugins.  See
[`plugins.txt`](https://github.com/Ouranosinc/jenkins-master/blob/master/plugins.txt)
for the full list of installed plugins.

For usage, see documentation for jenkins/jenkins image at
https://github.com/jenkinsci/docker/blob/master/README.md.

This image is simply the
[`jenkins/jenkins:lts`](https://hub.docker.com/r/jenkins/jenkins/) image with
plugins pre-installed.

## Release procedure

Just tag and push and a new docker image will be built automatically.

The docker tag will be the same as the git tag.

New docker image will be available at
https://hub.docker.com/r/pavics/jenkins-master/tags.
