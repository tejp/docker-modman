
FROM php:7.0.12-cli

RUN apt-get update && apt-get install -y git 

# Install modman
RUN curl -SL https://raw.githubusercontent.com/colinmollenhour/modman/master/modman -o modman \
    && chmod +x ./modman \
    && mv ./modman /usr/local/bin/

RUN groupadd -g 1000 magento2
RUN useradd -u 1000 -g 1000 -ms /bin/bash magento2
USER magento2
WORKDIR /home/magento2

# Add modman wrapper
COPY modman-wrapper.sh /modman-wrapper.sh

RUN chmod +x /modman-wrapper.sh

# Allow for modman commands to specified
ENTRYPOINT ["/modman-wrapper.sh"]