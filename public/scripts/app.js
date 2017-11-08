console.log("herrrre")

$.ajax({
	url: '/sandwich/sandwiches',
	type: 'GET',
	dataType: 'JSON',
	success: function(data) {
		console.log(data)
		for(var prop in data){
			$('body').append('<div>' + '<h4>' + 'key ingredients: ' + data[prop].contents + '</h4>' + '<h4>' + 'bread type: ' + data[prop].bread + '</h4>' + '<h4>' + 'health grade: ' +  data[prop].health + '</h4>' + '<h4>' + 'creativity level: ' + data[prop].creativity + '</h4>' + '<h4>' + 'difficulty level: ' + data[prop].difficulty + '</h4>' + '</div>')
			$('body').append('<br>')
		}
	},
	failure: function(err) {
		console.log(err)
	}
})
