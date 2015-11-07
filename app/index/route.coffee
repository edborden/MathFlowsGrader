`import Ember from 'ember'`

IndexRoute = Ember.Route.extend

  model: -> [
    {src:"assets/images/1.png"},
    {src:"assets/images/2.png"},
    {src:"assets/images/1.png"},
    {src:"assets/images/4.png"},
    {src:"assets/images/3.png"},
    {src:"assets/images/1.png"},
    {src:"assets/images/4.png"},
    {src:"assets/images/1.png"},
    {src:"assets/images/2.png"},
    {src:"assets/images/2.png"},
    {src:"assets/images/1.png"}
  ]

`export default IndexRoute`