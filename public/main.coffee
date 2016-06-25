$ ->
  $nav = $('.navbar')
  $body = $('body')
  $window = $(window)
  navOffsetTop = $nav.offset().top

  init = ->
    $window.on 'resize', resize
    $window.on 'scroll', onScroll
    $('a[href^="/#"], a[href^="#"]').on 'click', smoothScroll
    # wrapRows()

  resize = ->
    $body.removeClass 'has-docked-nav'
    navOffsetTop = $nav.offset().top
    onScroll()

  onScroll = ->
    scrollTop = $window.scrollTop()
    if navOffsetTop < scrollTop and !$body.hasClass 'has-docked-nav'
      $body.addClass 'has-docked-nav'
    if navOffsetTop > scrollTop and $body.hasClass 'has-docked-nav'
      $body.removeClass 'has-docked-nav'

  smoothScroll = (e) ->
    e.preventDefault()
    $(document).off 'scroll'
    target = @hash
    $header = $('.site-header')
    $target = $(target)
    console.log target, $target.offset().top
    $('body').stop().animate { scrollTop: $target.offset().top - $header.height() - 20 }, 500, 'swing', ->
      window.location.hash = target
      $(document).on 'scroll', onScroll

  wrapRows = ->
    cols = $('.row-wrap').data 'cols'
    $divs = $('.row-wrap .columns')
    i = 0
    while i < $divs.length
      $divs.slice(i, i + 3).wrapAll '<div class=\'row\'></div>'
      i += 3

  init()

  # PhotoSwipe setup
  pswpElement = document.querySelectorAll('.pswp')[0];
  items = [{
    src: 'https://placekitten.com/600/400',
    w: 600,
    h: 400
  },{
    src: 'https://placekitten.com/1200/900',
    w: 1200,
    h: 900
  }]
  options = { index: 0 }
  gallery = new PhotoSwipe pswpElement, PhotoSwipeUI_Default, items, options

  gallery.init()
