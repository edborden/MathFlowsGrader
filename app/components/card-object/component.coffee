`import Ember from 'ember'`

scheduleOnce = Ember.run.scheduleOnce

CardObjectComponent = Ember.Component.extend

  stack: null
  model: null
  takingNotes: false
  notes: null
  card: null

  classNames: ['card-object']
  tagName: 'li'

  didInsertElement: -> 
    scheduleOnce 'afterRender', @, 'setup'

  setup: ->
    console.log 'card setup'
    card = @get('stack').createCard @get 'element'
    @set 'card', card
    card.on 'throwout', => 
      @destroy()

  willDestroyElement: ->
    @destroyCard()

  destroyCard: ->
    console.log 'card destroy'
    @get('card').destroy()

  actions:
    toggleTakingNotes: ->
      @toggleProperty 'takingNotes'
      if @get 'takingNotes'
        @destroyCard()
      else
        @setup()

    setNotes: (notes) ->
      @set 'notes', notes


`export default CardObjectComponent`