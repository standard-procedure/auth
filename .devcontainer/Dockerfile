ARG RUBY_VERSION=3.3.2

# Install Node
FROM node:20-bullseye-slim AS nodejs

# Install Ruby
FROM ghcr.io/rails/devcontainer/images/ruby:$RUBY_VERSION

ENV LANG C.UTF-8

COPY --from=nodejs /usr/local/bin/node /usr/local/bin/
COPY --from=nodejs /usr/local/lib/node_modules /usr/local/lib/node_modules
COPY --from=nodejs /opt/ /opt/

RUN sudo ln -sf /usr/local/bin/node /usr/local/bin/nodejs &&\
  sudo ln -sf ../lib/node_modules/npm/bin/npm-cli.js /usr/local/bin/npm &&\
  sudo ln -sf ../lib/node_modules/npm/bin/npx-cli.js /usr/local/bin/npx &&\
  sudo ln -sf /opt/yarn*/bin/yarn /usr/local/bin/yarn &&\
  sudo ln -sf /opt/yarn*/bin/yarnpkg /usr/local/bin/yarnpkg

# Install Playwright
RUN /home/vscode/.rbenv/shims/gem install playwright-ruby-client &&\
  export PLAYWRIGHT_CLI_VERSION=$(bundle exec ruby -e 'require "playwright"; puts Playwright::COMPATIBLE_PLAYWRIGHT_VERSION.strip') &&\
  sudo yarn add -D "playwright@$PLAYWRIGHT_CLI_VERSION" &&\
  sudo yarn playwright install-deps  &&\
  sudo yarn run playwright install --with-deps chromium
