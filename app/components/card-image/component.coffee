`import Ember from 'ember'`

CardImageComponent = Ember.Component.extend

  classNames: ['card-image']
  attributeBindings: ['style']
  model: null

  style: Ember.computed -> 
    modelSrc = @model.src
    "background-image:url('https://res.cloudinary.com/hmb9zxcjb/image/upload/#{modelSrc}')".htmlSafe()

`export default CardImageComponent`