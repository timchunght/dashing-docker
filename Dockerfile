FROM ruby:2.2.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
RUN gem install dashing
RUN mkdir sweepsouth_dash
ADD . /sweepsouth_dash
