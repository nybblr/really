App.FuelController = Ember.ObjectController.extend
  actions:
    save: ->
      @get('model').save()
