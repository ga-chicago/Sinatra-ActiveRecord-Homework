console.log("here sir")

$.ajax({
	url: '/sandwich/sandwiches',
	type: 'GET',
	dataType: 'JSON',
	success: function(data) {
		console.log(data)
	},
	failure: function(err) {
		console.log(err)
	}
})
