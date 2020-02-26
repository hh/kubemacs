docker run --env-file netboot.env \
           --name kubemacs-docker-init \
           --user root \
           --privileged \
           --network host \
           --rm \
           -it \
           -v "$HOME/.kube:/tmp/.kube" \
           -v /var/run/docker.sock:/var/run/docker.sock \
           heyste/kubemacs \
           docker-init.sh
