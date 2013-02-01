###
Brunch with impress.js
======================

Copyright 2013 [Yu Inao][0] and distributed under [Public Domain][1]

[0]: http://github.com/japboy
[1]: http://creativecommons.org/licenses/publicdomain/
###

exports.config =

  files:
    javascripts:
      joinTo:
        'js/app.js': /(^app|^vendor)/
        'test/js/test.js': /^test/
    stylesheets:
      joinTo: 'css/app.css'
      order:
        before: [
          'vendor/css/normalize.css'
          'vendor/css/solarized_light.css'
        ]
    templates:
      joinTo:
        'js/templates.js': /.+\.jade$/

  plugins:
    jade:
      pretty: true
