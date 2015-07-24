Template.main.events
	'click i.icon-three-bars': (event, template) ->
		event.stopPropagation()
		$('aside').toggleClass('open')

	'click section': (event, template) ->
		event.stopPropagation()
		aside = $('aside')

		if aside.hasClass('open')
			aside.removeClass('open')

toggleMenu = (open) ->
	$('aside').toggleClass('open')
