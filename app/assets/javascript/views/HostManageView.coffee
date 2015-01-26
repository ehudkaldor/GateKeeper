define ["App", "ember", "text!../../templates/host_manage.handlebars", "semantic"], (App, Ember, hostTpl) ->
  App.HostManageView = Ember.View.extend
    defaultTemplate: Ember.Handlebars.compile(hostTpl)
    console.log("HostsView created. tpl: " + hostTpl)
#    console.log("HostsView created")
    
    afterRenderEvent: () ->
      console.log("HostView afterRender")
      
#    actions:
#    	 toogleall: () ->
#    	 	 toggleTo = $('#checkboxheader').checkbox("is checked")
#    	   console.log("toogleall to " + toggleTo)
#    	   if toggleTo == true
#    	   	 $('.ui.fitted.toggle.row').checkbox('check')
#    	   else
#    	   	 $('.ui.fitted.toggle.row').checkbox('uncheck')
        