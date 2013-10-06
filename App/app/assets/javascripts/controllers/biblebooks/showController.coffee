App.BiblebooksShowController = Em.ObjectController.extend
  isEditing: false
  edit: ->
    @set "isEditing", true

  doneEditing: ->
    @set "isEditing", false
    @.parent().get("store").commit()

  # destroy: ->
  #   @content.deleteRecord()
  #   @store.commit()
  #   @transitionToRoute 'biblebooks.index'

  destroy: ->
    if (window.confirm("Are you sure you want to delete this biblebook?"))
      @get('content').deleteRecord()
      @get('store').commit()
      @transitionToRoute('biblebooks')




