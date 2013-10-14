# App.BiblebooksNewController = Ember.ObjectController.extend
#   save: ->
#     # @get('store').commit()
#     @store.commit()

#   cancel: ->
#     @get('content').deleteRecord()
#     @get('store').transaction().rollback()
#     @transitionToRoute('biblebooks')

#   transitionAfterSave: ( ->
#     # when creating new records, it's necessary to wait for the record to be assigned
#     # an id before we can transition to its route (which depends on its id)
#     @transitionToRoute('biblebook', @get('content')) if @get('content.id')
#   ).observes('content.id')


# App.BiblebooksNewController = Ember.ObjectController.extend
#   save: ->
#     @store.commit()
#     @content.addObserver 'id', @, 'afterSave'

#   cancel: ->
#     @content.deleteRecord()
#     @transitionToRoute('biblebooks.index')

#   afterSave: ->
#     @content.removeObserver 'id', @, 'afterSave'
#     @transitionToRoute('biblebooks.show', @content)


