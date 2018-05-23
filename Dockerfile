FROM ruby:2.5.1

WORKDIR /usr/src/app

COPY Gemfile .
COPY Gemfile.lock .

RUN bundle install

COPY . .

CMD ["cucumber"]