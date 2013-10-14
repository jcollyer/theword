# For more information see: http://emberjs.com/guides/routing/

# App.Router.map ->
#   @resource "biblebooks", ->
#     @route "new"
#     @route "edit",
#       path: "/:biblebook_id/edit"
#     @route "show",
#       path: "/:biblebook_id"

App.Router.map ->
  @resource "biblebooks", ->
    @resource "biblebook",
      path: ":biblebook_id"
    @route "new"

App.BiblebooksRoute = Ember.Route.extend
  model: ->
    @store.find 'biblebook'


