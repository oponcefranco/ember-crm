# app/assets/javascripts/controllers/lead_edit.js.coffee
App.LeadEditController = Ember.ObjectController.extend

  actions:

    cancel: ->
      @get('model').rollback()
      @transitionToRoute 'lead'

    saveChanges: ->
      @get('model').save().then =>
        @transitionToRoute 'lead'