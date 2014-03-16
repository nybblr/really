App.Fuel = DS.Model.extend
  rocket: DS.belongsTo('rocket')
  name: DS.attr('string')
  caveats: DS.attr('string')
  formula: DS.attr('string')

App.Fuel.FIXTURES = [
  {id: 1, name: "Fuel 1"},
  {id: 2, name: "Fuel 2"},
  {id: 3, name: "Fuel 3"},
]
