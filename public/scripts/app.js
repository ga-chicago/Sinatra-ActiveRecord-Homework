console.log("herrrre")

$.ajax({
	url: '/sandwich/sandwiches',
	type: 'GET',
	dataType: 'JSON',
	success: function(data) {
		console.log(data)
		for(var prop in data){
			$('body').append('<h4>' + 'key ingredients: ' + data[prop].contents + '</h4>')
			$('body').append('<h4>' + 'bread type: ' + data[prop].bread + '</h4>')
			$('body').append('<h4>' + 'health grade: ' +  data[prop].health + '</h4>')
			$('body').append('<h4>' + 'creativity level: ' + data[prop].creativity + '</h4>')
			$('body').append('<h4>' + 'difficulty level: ' + data[prop].difficulty + '</h4>')
			$('body').append('<br>')
		}
	},
	failure: function(err) {
		console.log(err)
	}
})
