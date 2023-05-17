FROM fedora:38

LABEL maintainer="@deshmukhmayur"

LABEL name="deshmukhmayur/base-node"
LABEL version="0.1.0"

LABEL summary="Base Node.JS Image with pnpm"
LABEL description="Base container image for a personal development environment containing latest stable nodejs and pnpm"

# Installing nvm
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.35.1/install.sh | bash && \
    source ~/.bashrc && \
    # Installing latest node versions (lts + non-lts)
    nvm install node && nvm use node && \
    # Installing pnpm
    curl -fsSL https://get.pnpm.io/install.sh | bash

WORKDIR /opt/app-root/src

CMD ["sleep", "3600"]
