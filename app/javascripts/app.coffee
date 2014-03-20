window.App = Ember.Application.create
  ready: ->
    window.socket = new Faye.Client $('meta[name="faye-url"]').attr('content')
    Robin.Ember.connect(socket)
    Robin.EmberAdapter.subscribe('rocket', 'fuel')

App.Router.map ->
  @resource 'dashboard', path: '/'
  @resource 'rocket', path: '/rockets/:rocket_id', ->
    @resource 'fuel', path: '/fuels/:fuel_id'

# App.Store = DS.Store.extend
#   revision: 14
#   adapter: DS.FixtureAdapter

App.ApplicationSerializer = DS.ActiveModelSerializer.extend({})

App.Adapter = DS.RESTAdapter.extend
  host: 'http://localhost:5000'
  buildURL: (record, suffix) ->
    @_super(record, suffix) + ".json"

App.Store = DS.Store.extend
  revision: 14
  adapter: App.Adapter
