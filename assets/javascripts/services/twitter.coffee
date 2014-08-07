###global define###

define ['ang', 'services/services', 'services/message', 'vendor/angularResource'], (angular, services) ->
	'use strict'

	services.factory 'twitter', ['$resource', 'message', ($resource, message) ->
		tweets = result: {}

		activity = $resource 'https://api.twitter.com/1.1/search/tweets.json',
			callback: 'JSON_CALLBACK',
				get:
					method: 'JSONP'

		get = (criteria, success, failure) ->
			tweets.result = activity.get q: criteria
			, (Resource, getResponseHeaders) ->
				message.publish 'search', source: 'Twitter', criteria: criteria

				success.apply(this, arguments) if angular.isFunction success
			, failure

		get: get
		tweets: tweets
	]