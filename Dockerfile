FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.4.1

RUN gem install acts_as_ferret --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["aaf_install"]
CMD ["--help"]
