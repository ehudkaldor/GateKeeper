define ["App", "ember", "views/HostsView"], (App, Ember) ->
  App.HostsController = Ember.Controller.extend
        
    view: App.HostsView
    
    actions:
    	 managehost: (id) ->
    	 	 console.log("managehost id=" + id)
    	 	 
    console.log("HostsController created")
    	 	 