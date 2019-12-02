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


## Design explanation

We pre-install all the plugins in the docker image for reproducibility.

We could have used the jenkins-configuration-as-code plugin to install plugins
for us but that will mean each deployment might possibly have a slightly
different version of the same plugins.

We do not pin exact versions and dependencies of all the plugins so it's faster
to get the latest on each rebuild of the docker image without having to edit
any hardcoded committed versions before a rebuild.

Reproducibility is ensured by the docker image.  Something do not work, just
rollback to the previous docker image.  Need to find out what was the previous
version of a plugin, look in the previous docker image.

We can still pin a specific version in `plugins.txt` if we need to.  The syntax
is `plugin-name:version`, ex: `pipeline-build-step:2.7`.


## Release procedure

Just tag and push and a new docker image will be built automatically.

The docker tag will be the same as the git tag.

New docker image will be available at
https://hub.docker.com/r/pavics/jenkins-master/tags.
