FROM php:5.6-cli

MAINTAINER Achim Rosenhagen <a.rosenhagen@ffuenf.de>

# Install modman
RUN curl -SL https://raw.githubusercontent.com/colinmollenhour/modman/master/modman -o modman \
    && chmod +x ./modman \
    && mv ./modman /usr/local/bin/

# Add modman wrapper
COPY modman-wrapper.sh /modman-wrapper.sh

RUN chmod +x /modman-wrapper.sh

# Allow for modman commands to specified
ENTRYPOINT ["/modman-wrapper.sh"]