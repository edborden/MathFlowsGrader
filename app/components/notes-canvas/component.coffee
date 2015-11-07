`import Ember from 'ember'`
scheduleOnce = Ember.run.scheduleOnce

NotesCanvasComponent = Ember.Component.extend

  tagName: 'canvas'
  pad: null

  didInsertElement: -> 
    scheduleOnce 'afterRender', @, 'setup'

  setup: ->
    element = @get 'element'
    jqEl = Ember.$(element)
    parent = jqEl.parent()
    parentWidth = parent.width()
    parentHeight = parent.height()
    jqEl.width parentWidth
    jqEl.height parentHeight
    @resizeCanvas()
    @set 'pad', new SignaturePad element, @get 'options'

  options: Ember.computed ->
    penColor: "rgb(255,000,000)"
    minWidth: 1.5
    maxWidth: 3
    onEnd: ->
      console.log "onEnd"
      window.scrollTo(0,0)

  resizeCanvas: ->
    canvas = @get 'element'
    ratio =  Math.max(window.devicePixelRatio || 1, 1)
    canvas.width = canvas.offsetWidth * ratio
    canvas.height = canvas.offsetHeight * ratio
    canvas.getContext("2d").scale(ratio, ratio)

  willDestroyElement: ->
    @exportImage()

  exportImage: ->
    image = @get('pad').toDataURL()
    @setNotes image

`export default NotesCanvasComponent`