Router.route '/', ->
	firstList = Lists.findOne({}, {sort: {'name': 1}})
	if firstList?
		@redirect '/' + firstList._id
	else
		@render 'main'

Router.route '/:_id', ->
	Session.set '_id', @params._id
	@render 'main'