if Meteor.isClient
	Template.tasks.helpers
		activeList: ->
			list = Lists.findOne Session.get '_id'
		tasks: ->
			Tasks.find
				listId: Session.get '_id'
		isChecked: ->
			'checked' if @isChecked is true

	Template.tasks.events
		'keyup input[type="text"]': (event, template) ->
			if event.which is 13
				input = template.find('input[type="text"]')

				if input.value.length > 0
					listId = Session.get '_id'
					name = input.value
					isChecked = false

					Tasks.insert({
						listId: listId,
						name: name,
						isChecked: isChecked
					})
					input.value = ''

		'change input[type=checkbox]': (event, template) ->
			isChecked = event.target.checked
			Tasks.update(@_id, {$set: {isChecked: isChecked}});

		'click i.icon-trashcan': (event, template) ->
			if confirm("You sure?")
				Lists.remove({_id: Session.get '_id'})
				Router.go '/'