`import Ember from 'ember'`

computed = Ember.computed
equal = computed.equal

CardDragComponent = Ember.Component.extend

  dragDirection: null
  dragConfidence: null

  correct: equal 'dragDirection','correct'
  wrong: equal 'dragDirection','wrong'

  classNameBindings: ['correct','wrong']
  attributeBindings: ['style']

  style: computed 'dragConfidence', ->
    dragConfidence = @get 'dragConfidence'
    "opacity:#{dragConfidence*1.3}".htmlSafe()

`export default CardDragComponent`