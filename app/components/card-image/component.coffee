`import Ember from 'ember'`

CardImageComponent = Ember.Component.extend

  classNames: ['card-image']
  attributeBindings: ['style']
  src: null

  style: Ember.computed ->
    src = @get 'src'
    "background-image:url('https://res.cloudinary.com/hmb9zxcjb/image/upload/#{src}')".htmlSafe()

`export default CardImageComponent`