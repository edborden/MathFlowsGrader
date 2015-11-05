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
        console.log offset,element.offsetWidth,Math.min(Math.abs(offset*8) / element.offsetWidth, 1)
        Math.min(Math.abs(offset) / element.offsetWidth, 1)

    isThrowOut: (params) ->
      Math.abs(params) > 50

`export default CardStackComponent`