# app/assets/javascripts/controllers/lead.js.coffee
App.LeadController = Ember.ObjectController.extend
  
  isEditing: false

  actions:
    saveChanges: -> @get('model').save() if @get('model.isDirty')

    showUnsavedMessage: ( ->
      @get('isDirty') and !@get('isSaving')
    ).property('isDirty', 'isSaving')

    delete: ->
      @get('model').destroyRecord().then =>
        @transitionToRoute 'leads'
 
