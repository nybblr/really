exports.config =
  paths:
    watched: ['app', 'vendor']
    public: 'build'
  files:
    javascripts:
      joinTo:
        'app.js': /^app/
        'vendor.js': /^(?!app)/
      order:
        before: [
          "vendor/scripts/auto-reload.js"
        ]
    stylesheets:
      joinTo:
        'app.css': /^app/
        'vendor.css': /^(?!app)/
    templates:
      joinTo: 'app.js'
      precompile: true
      root: 'javascripts/templates'
      paths:
        jquery: 'bower_components/jquery/jquery.js'
        ember: 'bower_components/ember/ember.js'
        handlebars: 'bower_components/handlebars/handlebars.js'
        emblem: 'bower_components/emblem/dist/emblem.js'
  server:
    port: 3000
  plugins:
    coffeescript:
      bare: false
    autoReload:
      enabled:
        css: on
        js: on
        assets: true
    static_jade:
      extension: ".static.jade"
  modules:
    wrapper: false
    definition: false
