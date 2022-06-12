FROM ruby:3.1.2

RUN apt-get update -qq \
  && apt-get install -y vim nodejs postgresql-client npm libvips libvips-dev ffmpeg graphviz \
  && rm -rf /var/lib/apt/lists/* \
  && npm install --global yarn

RUN mkdir /myapp
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
COPY . /myapp
RUN mv /myapp/.erdconfig ~/.erdconfig

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
