FROM mcr.microsoft.com/vscode/devcontainers/base:debian-11

LABEL org.opencontainers.image.source=https://github.com/tbistr/texlive-full-devcontainer

ENV LANG=C.UTF-8 \
    LC_ALL=C.UTF-8 \
    TEXLIVE_INSTALL_NO_CONTEXT_CACHE=1

WORKDIR /tmp

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get install -y \
    wget \
    && rm -rf /var/lib/apt/lists/*

# install texlive-full.
RUN wget https://texlive.texjp.org/2025/tlnet/install-tl-unx.tar.gz && \
    tar xvf install-tl-unx.tar.gz && \
    cd install-tl-* && \
    echo "selected_scheme scheme-full" > ./texlive.profile && \
    echo "option_doc 0" >> ./texlive.profile && \
    echo "option_src 0" >> ./texlive.profile && \
    ./install-tl -profile ./texlive.profile && \
    cd .. && \
    rm -rf install-tl-*

# install tex-fmt
RUN wget https://github.com/latex-lsp/texlab/releases/download/v5.23.0/texlab-x86_64-linux.tar.gz && \
    tar xvf texlab-x86_64-linux.tar.gz && \
    mv texlab /usr/local/bin/ && \
    rm texlab-x86_64-linux.tar.gz

USER vscode
RUN echo 'export PATH=/usr/local/texlive/2025/bin/x86_64-linux:$PATH' >> ~/.bashrc
RUN echo 'export PATH=/usr/local/texlive/2025/bin/aarch64-linux:$PATH' >> ~/.bashrc
USER root
