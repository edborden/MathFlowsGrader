`import Ember from 'ember'`

IndexRoute = Ember.Route.extend

  model: -> [
    {content:'♣'},
    {content:'♦'},
    {content:'♥'},
    {content:'♠'}
  ]

`export default IndexRoute`