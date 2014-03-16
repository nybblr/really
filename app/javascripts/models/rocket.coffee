App.Rocket = DS.Model.extend
  fuels: DS.hasMany('fuel')
  title: DS.attr('string')
  thrusters: DS.attr('number')
  speed: DS.attr('number')
  decommissioned: DS.attr('boolean')

App.Rocket.FIXTURES = [
  {id: 1, title: "Rocket 1", fuels: [1,2,3]},
  {id: 2, title: "Rocket 2", fuels: []},
  {id: 3, title: "Rocket 3", fuels: []},
]
