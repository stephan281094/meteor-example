if Meteor.isServer
	Meteor.publish 'list', (_id) ->
		Lists.findOne
			_id: _id
