define(
  app_name: "Gatekeeper",
  paths:
    jQuery:     "../javascripts/jquery-2.1.1.min"
    handlebars: "../javascripts/handlebars-v1.3.0"
    semantic: "../javascripts/semantic.min"
    ember:      "../javascripts/ember.prod"
    'ember-data': "../javascripts/ember-data.prod",
    templates: "../templates/templates.pre.min",
    text: '../javascripts/requirejs-plugins/text',
    hbs: '../javascripts/requirejs-plugins/hbs',
    domReady: './/javascripts/requirejs-plugins/domReady'
    
    
  shim:
    ember:
      deps: ["jQuery", "handlebars"]
      exports: "Ember"
    'ember-data':
      deps:[ 'ember'],
      exports:'DS'
    templates:
      deps: ["ember"],
      exports: "Template"
)