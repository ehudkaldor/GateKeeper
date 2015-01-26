define ["App", "ember"], (App, Ember) ->
  App.ApplicationController = Ember.Controller.extend
        
    actions:
    	 managehost: (id) ->
    	 	 console.log("managehost id=" + id)
    	 	 
    console.log("ApplicationController created")
    	 	 