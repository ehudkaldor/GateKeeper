define ["App", "ember-data", "ember", "views/ApplicationView", "models/Host", "views/HostsView", "controllers/HostsController", "views/HostManageView", "controllers/HostManageController", "semantic"], (App, DS, Ember) ->
#  console.log("creating router")
#  ->    
    console.log("constructing routes in Router")
    App.Router.map -> 
    	 @resource('application')
      @resource('hosts')
      @resource('host', ->
        @route('manage', {path: '/:host_id/manage'})
        return
      )
      @route('bad_url', { path: '/*badurl' })
      
    App.ApplicationRoute = Ember.Route.extend
#      beforeModel: () ->
#        @transitionTo('hosts')
    
      model: ->
        Ember.Logger.log("application route")
        return
      actions:
        error: (reason) ->
          alert(reason)
      
    App.HostsRoute = Ember.Route.extend 
      renderTemplate: () ->
        @render(
#            Ember.Logger.log("hosts route renderTemplate.render")
            into: 'application',
#            outlet: 'main',
#            controller: App.HostsController
        )
        return
      model: ->
#        alert(@store.find("host", 1)
        Ember.Logger.log("hosts route model")
        hosts = @store.find("host")
        console.log(hosts)
        hosts

    App.HostManageRoute = Ember.Route.extend
      controllerName: "HostManageController"

      setupController: (controller, model) ->
#      	 @controllerFor('HostManage').set('model', model)
        controller.set('model', model)
        Ember.Logger.log("App.HostManageRoute setupController. controller " + controller)
        Ember.Logger.log(model)
        Ember.Logger.log(controller)
      renderTemplate: () ->
      	 Ember.Logger.log("App.HostManageRoute renderTemplate")
      	 @render(
            into: 'application',
#      	   outlet: 'main',
#            controller: "HostManageController"
      	 )
#      	 Ember.Logger.log("App.HostManageRoute rendered")
      model: (host) ->
        console.log("host_id: " + host.host_id)
#        mod = {id: "1", ip: "ehud"}
#        console.log(mod)
#        mod
#        @store.find("host", host.host_id).then((h) ->
#          alert(h.get("ip"))
#        )
        @store.find("host", host.host_id)#.then((h) ->
#          h
#        )
#        myHost.then(alert(myHost))
#        console.log(myHost)
#        myHost
    
    Ember.Logger.log("routes constructed")
    return
