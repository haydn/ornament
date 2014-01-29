Contributing to Ornament
========================

## Working with the Dummy App

The dummy app has these additional configuration paths setup:

    app/assets          - ../../lib/generators/ornament/templates/app/assets
    app/views           - ../../lib/generators/ornament/templates/app/views
    config/initializers - ../../lib/generators/ornament/templates/config/initializers
    config/locales      - ../../lib/generators/ornament/templates/config/locales
    vendor/assets       - ../../lib/generators/ornament/templates/vendor/assets

This means when you're running the dummy app you can see changes made in the
generator template directory without re-running the generator.

The one exception is the `_defaults.css.scss` file. If you make changes to this
file you'll need to re-run the settings generator:

    rails g ornament:settings -f

## JavaScript Guidelines

Use [JSLint](http://www.jslint.com/) with the following settings to validate
your JavaScript files:

    /*jslint browser: true, indent: 2, todo: true, unparam: true */
    /*global jQuery,Ornament */
