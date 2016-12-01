FROM gocd/gocd-agent

# Add nodejs support
RUN curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
RUN apt-get update && \
    apt-get install -y -q \
      build-essential \
      nodejs

RUN npm install -g grunt-cli

# Cleanup
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*