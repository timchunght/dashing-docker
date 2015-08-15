FROM ubuntu:14.04

RUN apt-get update -q
RUN apt-get install -qy python-software-properties software-properties-common
RUN add-apt-repository -y ppa:brightbox/ruby-ng
RUN apt-get update -q
RUN apt-get install -qy nginx ruby2.1 ruby2.1-dev nodejs sqlite3 libsqlite3-dev zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libxml2-dev libxslt1-dev libcurl4-openssl-dev git-core curl

RUN /bin/bash -l -c "gem install bundler --no-ri --no-rdoc"
RUN apt-get install -y libpq-dev
RUN mkdir /sweepsouth_dash
WORKDIR /sweepsouth_dash
ADD . /sweepsouth_dash
RUN bundle
