$ ->
  $nav = $('.navbar')
  $body = $('body')
  $window = $(window)
  navOffsetTop = $nav.offset().top

  init = ->
    $window.on('scroll', onScroll)
    $window.on('resize', resize)

  resize = ->
    $body.removeClass('has-docked-nav')
    navOffsetTop = $nav.offset().top
    onScroll()

  onScroll = ->
    scrollTop = $window.scrollTop()
    if navOffsetTop < scrollTop and !$body.hasClass('has-docked-nav')
      $body.addClass 'has-docked-nav'
    if navOffsetTop > scrollTop and $body.hasClass('has-docked-nav')
      $body.removeClass 'has-docked-nav'

  init()
