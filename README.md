Ornament
========

A front-end framework for your Rails app.

Visit the [Ornament website](http://ornament.herokuapp.com/) for more information.

Installation
------------

1.  Setup your `Gemfile` like this:

    ```ruby
    gem 'simple_form', '~> 2.1.0'
    gem 'kaminari', '~> 0.15.0'

    group :assets do
      gem "sass-rails",     "~> 3.2.3"
      gem "uglifier",       ">= 1.0.3"
      gem "compass-rails",  "~> 1.0.3"
    end

    group :development do
      gem "ornament", :git => "git@github.com:ketchup/ornament.git"
    end
    ```

1.  Run bundler:

    ```bash
    bundle install
    ```

1.  Run the generator:

    ```bash
    rails generate ornament:install
    ```

License
-------

Copyright (c) 2013-2014 Katalyst Interactive & Haydn Ewers.

See the LICENSE file for details.

Acknowledgments
---------------

The project uses [IE9.js](http://code.google.com/p/ie7-js/) - copyright 2004-2010, Dean Edwards.
