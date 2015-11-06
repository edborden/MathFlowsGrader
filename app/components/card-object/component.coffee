`import Ember from 'ember'`

scheduleOnce = Ember.run.scheduleOnce

CardObjectComponent = Ember.Component.extend

  stack: null
  model: null
  takingNotes: false
  notes: null
  cardHolder: null

  classNames: ['card-object']
  tagName: 'li'

  didInsertElement: -> 
    scheduleOnce 'afterRender', @, 'setup'

  setup: ->
    card = @get('stack').createCard @get 'element'
    @set 'cardHolder', card
    card.on 'throwout', => 
      @destroy()
    return card

  willDestroyElement: ->
    @destroyCard()

  destroyCard: ->
    @get('cardHolder').destroy()

  actions:
    toggleTakingNotes: ->
      @toggleProperty 'takingNotes'

  card: Ember.computed 'takingNotes', ->
    unless @get 'takingNotes'
      @setup()
    else
      @destroyCard()

`export default CardObjectComponent`