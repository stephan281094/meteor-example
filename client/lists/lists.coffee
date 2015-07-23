Template.lists.helpers
	lists: ->
		Lists.find({}, {
			sort: {name: 1}
		})
	isActive: ->
		'active' if (Router.current().params._id is @_id)
	isDone: ->
		tasks = Tasks.find({
			listId: @_id
		})
	qtyTasks: ->
		tasks = Tasks.find({
			listId: @_id
		})

		tasks.count()

Template.lists.events
	'keyup input[type="text"]': (event, template) ->
		if (event.which is 13)
			input = template.find('input[type="text"]')

			if (input.value.length > 0)
				Lists.insert({name: input.value})
				input.value = ''
