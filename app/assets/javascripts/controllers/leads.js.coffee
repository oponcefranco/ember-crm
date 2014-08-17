# app/assets/javascripts/controllers/leads.js.coffee
App.LeadsController = Ember.ArrayController.extend
  sortProperties: ['firstName', 'lastName']