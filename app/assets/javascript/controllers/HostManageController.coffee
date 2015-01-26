define ["App", "ember", "views/HostManageView"], (App, Ember) ->
  App.HostMagageController = Ember.ObjectController.extend
    me: "ehud"
    model: App.Host
    actions:
      managehost: (id) ->
        console.log("managehost id=" + id)
    console.log("HostManageController. model: " + @model)
        