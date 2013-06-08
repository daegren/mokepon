class Mokepon
  constructor: (@$viewport) ->
    @init()

  init: ->
    # initialize the game here
    @buildCanvas()
    @initContext()

  buildCanvas: ->
    @$canvas = $('<canvas>')
    @$canvas.attr 'height', 1000
    @$canvas.attr 'width', 1000

    @$viewport.append @$canvas

  initContext: ->
    @ctx = @$canvas[0].getContext '2d'


$ ->
  $viewport = $ '#viewport'

  window.Mokepon = Mokepon

  window.game = new Mokepon $viewport
