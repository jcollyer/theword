# app/javascripts/store.js

# DS.RESTAdapter.reopen
#   namespace: 'api/v1'


# App.Store = DS.Store.extend
#   revision: 12
#   adapter: "DS.RESTAdapter" # "DS.FixtureAdapter"


App.Store = DS.Store.extend
  revision: 12
  adapter: "DS.FixtureAdapter"

# App.ApplicationAdapter = DS.FixtureAdapter.extend()
App.Biblebook.FIXTURES = [{id: "1", name: "first", body: "fist biblebok"},{id: "2", name: "second", body: "second biblebok"}]
