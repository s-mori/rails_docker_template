FROM ruby:2.5.1

# 必要ライブラリのインストール
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

# 作業スペースの構築
RUN mkdir /project
WORKDIR /project

COPY ./project/Gemfile /project/Gemfile
COPY ./project/Gemfile.lock /project/Gemfile.lock

RUN bundle install
COPY ./project /project
