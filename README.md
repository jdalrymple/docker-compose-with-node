# docker-compose-with-node
Adds docker-compose and nodejs to the [offcial docker image](https://hub.docker.com/_/docker/).

Can be used as a runner in GitLab like this:

```
docker exec -it gitlab-runner \
  gitlab-runner \
    register -n \
             --name "docker-node" \
             --tag-list "docker-node" \
             --docker-image "colinhan/docker-compose-with-node:latest" \
             --docker-privileged \
             --docker-volumes "/var/run/docker.sock:/var/run/docker.sock" \
             --docker-volumes "/cache"
```
