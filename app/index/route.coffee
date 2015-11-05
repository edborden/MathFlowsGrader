`import Ember from 'ember'`

IndexRoute = Ember.Route.extend

  model: -> [
    {content:'♣',color:"orange"},
    {content:'♦',color:"red"},
    {content:'♥',color:"yellow"},
    {content:'♠',color:"green"}
  ]

`export default IndexRoute`