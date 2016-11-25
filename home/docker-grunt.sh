docker run \
    --net=host \
    -it --rm \
    -v "$(pwd)":/data \
    -v $HOME/.gitconfig:/root/.gitconfig \
    -v $HOME/.npmrc:/root/.npmrc \
    -e http_proxy=$http_proxy \
    -e https_proxy=$https_proxy \
    -e HTTP_PROXY=$HTTP_PROXY \
    -e HTTPS_PROXY=$HTTPS_PROXY \
    digitallyseamless/nodejs-bower-grunt \
    "$@"
