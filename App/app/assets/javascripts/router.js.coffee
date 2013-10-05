# For more information see: http://emberjs.com/guides/routing/

App.Router.map ()->
  @resource "biblebooks", ->
      @route "new"
      @route "edit",
        path: "/:biblebook_id/edit"
      @route "show",
        path: "/:biblebook_id"

