# app/assets/javascripts/controllers/lead.js.coffee
App.LeadController = Ember.ObjectController.extend

  actions:
    saveChanges: -> @get('model').save()