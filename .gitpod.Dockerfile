FROM gitpod/workspace-full

USER gitpod

# update system
RUN sudo apt update && \
    sudo apt -y upgrade && \
    sudo apt -y dist-upgrade

# install tools
RUN sudo apt -y install curl dirmngr apt-transport-https lsb-release ca-certificates && \
    curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - && \
    sudo apt -y install nodejs gcc g++ make && \
    npm i -g yarn && \
    yarn set version 1.7.0
