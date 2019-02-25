FROM kryptykfysh/rails:latest
LABEL maintainer=kryptykphysh@kryptykphysh.xyz

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY Gemfile* ./
COPY yarn.lock ./
RUN bundle install \
  && yarn
COPY ./ .

CMD ["./bin/rails", "-b", "0.0.0.0"]
