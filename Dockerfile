FROM ruby:2.7.0

ENV LANG=C.UTF-8 \
    TZ=Asia/Tokyo \
    APP_HOME=/feeling-to-type-ruby

ENV BUNDLE_GEMFILE=$APP_HOME/Gemfile \
    BUNDLE_JOBS=4

RUN apt-get update -qq

RUN gem update --system
RUN gem install bundler

RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME

# COPY Gemfile \
#      Gemfile.lock \
#      $APP_HOME/
