define ["App", "ember", "text!../../templates/hosts.handlebars", "semantic"], (App, Ember, hostsTpl) ->
  App.HostsView = Ember.View.extend
    defaultTemplate: Ember.Handlebars.compile(hostsTpl)
#    console.log("HostsView created. tpl: " + hostsTpl)
    
    afterRenderEvent: () ->
      console.log("HostsView afterRender")
      $('.ui.fitted.toggle').checkbox()
      
    actions:
    	 toogleall: () ->
    	 	 toggleTo = $('#checkboxheader').checkbox("is checked")
    	   console.log("toogleall to " + toggleTo)
    	   if toggleTo == true
    	   	 $('.ui.fitted.toggle.row').checkbox('check')
    	   else
    	   	 $('.ui.fitted.toggle.row').checkbox('uncheck')