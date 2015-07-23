Template.main.events
	'click i.icon-three-bars': (event, template) ->
		event.stopPropagation()
		toggleMenu()

	'click section': (event, template) ->
		event.stopPropagation()
		aside = $('aside')

		if aside.hasClass('open')
			aside.removeClass('open')

toggleMenu = (open) ->
	aside = $('aside')
	open  = aside.hasClass('open') if (not open?)

	if (open)
		aside.removeClass('open')
	else
		aside.addClass('open')
