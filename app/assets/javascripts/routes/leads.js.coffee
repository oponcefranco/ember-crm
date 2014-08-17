# app/assets/javascripts/routes/leads.js.coffee
App.LeadsRoute = Ember.Route.extend

  model: -> @store.find 'lead'