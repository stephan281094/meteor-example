if Meteor.isClient
	Template.main.events
		'click i.icon-three-bars': (event, template) ->
			toggleMenu()
			event.stopPropagation()
			
		'click section': (event, template) ->

			if $('aside').hasClass 'open'
				$('aside').removeClass 'open'


toggleMenu = (open) ->
	aside = $('aside')
	open = aside.hasClass 'open' if not open?

	if open is true
		aside.removeClass 'open'
	else
		aside.addClass 'open'