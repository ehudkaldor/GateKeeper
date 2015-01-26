define ["App", "ember", "ember-data"], (App, Ember, DS) ->
  App.Host = DS.Model.extend
    hostname: DS.attr('string'),
    ip: DS.attr('string'),
    username: DS.attr('string'),
    password: DS.attr('string')    
    console.log("Host model")
  
  App.Host.reopenClass
    FIXTURES: [
      { id: 1, hostname: 'host1', ip: '1.2.3.4', username: 'Glowacki', password: '12345' },
      { id: 2, hostname: 'host2', ip: '1.2.3.5' , username: 'Dale', password: '12345'}
    ]
