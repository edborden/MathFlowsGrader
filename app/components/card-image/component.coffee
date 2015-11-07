`import Ember from 'ember'`

CardImageComponent = Ember.Component.extend

  classNames: ['card-image']
  attributeBindings: ['style']
  src: null

  style: Ember.computed ->
    src = @get 'src'
    "background-image:url(#{src})".htmlSafe()

`export default CardImageComponent`