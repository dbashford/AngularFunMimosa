###global define###

define (require) ->
  'use strict'

  directives = require('d/directives')
  templates = require('templates')
  require('d/tabs')

  directives.directive 'tab', [->
    link = (scope, element, attrs, controller) ->
      controller.addTab scope, attrs.tabId

    link: link
    replace: true
    require: '^tabs'
    restrict: 'E'
    scope:
      caption: '@'
    template: templates.tab
    transclude: true
  ]