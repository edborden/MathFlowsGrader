`import Ember from 'ember'`

scheduleOnce = Ember.run.scheduleOnce

CardObjectComponent = Ember.Component.extend

  stack: null
  card: null
  model: null
  takingNotes: false
  notes: null

  classNames: ['card-object']
  tagName: 'li'

  didInsertElement: -> 
    scheduleOnce 'afterRender', @, 'setup'

  setup: ->
    card = @get('stack').createCard @get 'element'
    @set 'card', card
    card.on 'throwout', => 
      console.log 'destroy'
      @destroy()

  willDestroyElement: ->
    @destroyCard()

  destroyCard: ->
    @get('card').destroy()

  actions:
    toggleTakingNotes: ->
      @toggleProperty 'takingNotes'

`export default CardObjectComponent`