App.BiblebooksIndexRoute = Em.Route.extend
  model: ->
    @get('store').findAll('biblebook')

App.BiblebooksShowRoute = Em.Route.extend
  model: (params) ->
    @get('store').find(params.biblebook_id)


App.BiblebooksNewRoute = Em.Route.extend
  model: ->
    App.Biblebook.createRecord()
  setupController: (controller, model) ->
    @_super()
    controller.set('content', model)

App.BiblebooksEditRoute = Em.Route.extend
  model: (params) ->
    App.Biblebook.find(params.biblebook_id)

