`import Ember from 'ember'`

scheduleOnce = Ember.run.scheduleOnce

CardStackComponent = Ember.Component.extend

  stack: null

  classNames: ['card-stack']
  tagName: 'ul'

  didInsertElement: -> 
    scheduleOnce 'afterRender', @, 'setupCardStack'

  setupCardStack: ->
    @set 'stack', gajus.Swing.Stack(@get 'options')

  options: Ember.computed ->
    throwOutConfidence: (offset, element) ->
      Math.min(Math.abs(offset*2) / element.offsetWidth, 1)

`export default CardStackComponent`