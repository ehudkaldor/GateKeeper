define ["ember", "ember-data"], (Ember, DS) ->
  console.log("creating application")
  window.App = Ember.Application.create(
    LOG_TRANSITIONS: true
  )
  App.ApplicationAdapter = DS.FixtureAdapter
  console.log("application created")
  App
