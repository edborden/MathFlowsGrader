`import Ember from 'ember'`

NotesButtonComponent = Ember.Component.extend

  classNames: ['scircle','click-fix']

  click: ->
    @toggleTakingNotes()

`export default NotesButtonComponent`