`import Ember from 'ember'`

scheduleOnce = Ember.run.scheduleOnce

CardObjectComponent = Ember.Component.extend

  stack: null
  card: null
  model: null

  classNames: ['card-object']
  tagName: 'li'
  attributeBindings: ["style"]

  style: Ember.computed -> "background-color:#{@get('model').color}".htmlSafe()

  didInsertElement: -> 
    scheduleOnce 'afterRender', @, 'setup'

  setup: ->
    card = @get('stack').createCard @get 'element'
    @set 'card', card
    card.on 'throwout', => 
      console.log 'destroy'
      @destroy()

`export default CardObjectComponent`