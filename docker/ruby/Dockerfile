FROM ruby:2.4.1
MAINTAINER Dana Negrescu <dana.negrescu@boxalino.com>

ARG REFRESHED_AT
ENV REFRESHED_AT $REFRESHED_AT

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update -qqy && apt-get -qqyy install \
    nodejs \
    yarn \
  && rm -rf /var/lib/apt/lists/*

RUN gem update --system --no-user-install

COPY bin/run.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/run.sh

EXPOSE 3000 8808

WORKDIR /srv/app

# The main command to run when the container starts. Also
# tell the Rails dev server to bind to all interfaces by
# default.
CMD ["/usr/local/bin/run.sh"]