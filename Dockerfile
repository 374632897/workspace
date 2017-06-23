FROM centos:7
WORKDIR /root
RUN mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup && \
    curl http://mirrors.163.com/.help/CentOS7-Base-163.repo -o /etc/yum.repos.d/CentOS-Base.repo && \
    yum update -y && \
    yum install -y git vim && \
    # yum install -y make gcc gcc-c++ ssh && \
    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash && bash $HOME/.nvm/nvm.sh install v8 && \
    git clone https://github.com/374632897/dotfiles.git
