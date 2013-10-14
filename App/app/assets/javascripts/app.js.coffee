#= require ./store
#= require_tree ./models
#= require_tree ./controllers
#= require_tree ./views
#= require_tree ./helpers
#= require_tree ./templates
#= require_tree ./routes
#= require ./router
#= require_self

App.BiblebooksRoute = Ember.Route.extend(
  model: ->
    @store.find "biblebook"
)


App.BisblebookController = Ember.ObjectController.extend(
  isEditing: false
  edit: ->
    @set "isEditing", true

  delete: ->
    if (window.confirm("Are you sure you want to delete this biblebook?"))
      @get('content').deleteRecord()
      @get('store').commit()
      @transitionToRoute('biblebooks')

  doneEditing: ->
    @set "isEditing", false
    @get('store').commit()
)


App.BiblebooksNewController = Ember.ObjectController.extend(
  actions:
    save: ->
      # @store.find("biblebook").commit()
      @get('store').commit()

  #   cancel: ->
  #     @get('content').deleteRecord()
  #     @get('store').transaction().rollback()
  #     @transitionToRoute('biblebooks')

  # transitionAfterSave: ( ->
  #   # when creating new records, it's necessary to wait for the record to be assigned
  #   # an id before we can transition to its route (which depends on its id)
  #   @transitionToRoute('biblebook', @get('content')) if @get('content.id')
  # ).observes('content.id')
)



