`import Ember from 'ember'`

NotesDataComponent = Ember.Component.extend

  src: null
  tagName: 'img'
  attributeBindings: ['src']

  didInsertElement: ->
    console.log @get 'src'

`export default NotesDataComponent`