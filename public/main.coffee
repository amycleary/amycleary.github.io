$ ->
  $nav = $('.navbar')
  $body = $('body')
  $window = $(window)
  navOffsetTop = $nav.offset().top

  init = ->
    $window.on 'resize', resize
    $window.on 'scroll', onScroll
    $('a[href^="/#"], a[href^="#"]').on 'click', smoothScroll
    setupGallery()
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
    $('body').stop().animate
      scrollTop: $target.offset().top - $header.height() - 20
    , 500, 'swing', ->
      window.location.hash = target
      $(document).on 'scroll', onScroll

  wrapRows = ->
    cols = $('.row-wrap').data 'cols'
    $divs = $('.row-wrap .columns')
    i = 0
    while i < $divs.length
      $divs.slice(i, i + 3).wrapAll '<div class=\'row\'></div>'
      i += 3

  setupGallery = ->
    imgSelector = 'article > section > img'
    pswpElement = document.querySelectorAll('.pswp')[0]
    imgElements = document.querySelectorAll imgSelector
    if imgElements.length
      items = for img in imgElements
        src: img.currentSrc
        w: img.naturalWidth
        h: img.naturalHeight

      $(imgSelector).css 'cursor', 'pointer'
      $(imgSelector).on 'click', (event) ->
        index = $(imgSelector).index event.target
        new PhotoSwipe pswpElement, PhotoSwipeUI_Default, items, index: index
        .init()

  init()
