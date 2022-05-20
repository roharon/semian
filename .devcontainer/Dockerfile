FROM ruby:2.7.1

# Avoid warnings by switching to noninteractive
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install --no-install-recommends -y \
      apt-utils \
 && apt-get install -y \
      build-essential \
      clang \
      git \
      less \
      libssl-dev \
      lldb \
      lsb-release \
      netcat \
      procps \
      xz-utils \
 && gem install bundler rcodetools rubocop ruby-debug-ide fastri

# Switch back to dialog for any ad-hoc use of apt-get
ENV DEBIAN_FRONTEND=dialog
