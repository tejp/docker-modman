<a href="http://www.ffuenf.de" title="ffuenf - code • design • e-commerce"><img src="https://github.com/ffuenf/Ffuenf_Common/blob/master/skin/adminhtml/default/default/ffuenf/ffuenf.png" alt="ffuenf - code • design • e-commerce" /></a>

docker-modman
=============
[![GitHub tag](http://img.shields.io/github/tag/ffuenf/docker-modman.svg)][tag]
[![Docker Pulls](https://img.shields.io/docker/pulls/ffuenf/docker-modman.svg)][pulls]
[![Docker Stars](https://img.shields.io/docker/stars/ffuenf/docker-modman.svg)][stars]
[![Docker Layers](https://badge.imagelayers.io/ffuenf/docker-modman.svg)][layers]
[![PayPal Donate](https://img.shields.io/badge/paypal-donate-blue.svg)][paypal_donate]
[tag]: https://github.com/ffuenf/docker-modman/tags
[pulls]: https://hub.docker.com/r/ffuenf/docker-modman/
[stars]: https://hub.docker.com/r/ffuenf/docker-modman/
[layers]: https://imagelayers.io/?images=ffuenf/docker-modman:latest
[paypal_donate]: https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=J2PQS2WLT2Y8W&item_name=docker-modman%3a%20docker-modman&item_number=docker-modman&currency_code=EUR

This provides a copy of [modman](https://github.com/colinmollenhour/modman) to be used in a docker environment.

Usage
-----
The container requires an environment variable called `MAGE_ROOT_DIR` to be defined.
This container changes into this director before running the `modman` command.

The container also requires access to your Magento files.

Docker Compose
--------------
Assuming you have a data container called `data` which contains your files that you mount to `/var/www/html`, and your MySQL container is called `db` then your `docker-compose.yml` might look something like this:

    modman:
      image: ffuenf/modman
      environment:
        MAGE_ROOT_DIR: /var/www/html
      volumes_from:
        - data

This image can then be used to easily perform any `modman` command, for example:

    docker-compose run modman deploy-all

Development
-----------
1. Fork the repository from GitHub.
2. Clone your fork to your local machine:

        $ git clone git@github.com:USER/docker-modman.git

3. Create a git branch

        $ git checkout -b my_bug_fix

5. Make your changes/patches/fixes, committing appropriately
7. Push your changes to GitHub
8. Open a Pull Request

License and Author
------------------

- Author:: Achim Rosenhagen (<a.rosenhagen@ffuenf.de>)

The MIT License (MIT)

Copyright (c) 2015 ffuenf

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
