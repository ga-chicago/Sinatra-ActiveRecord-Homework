console.log('Player JS Linked!')

//show all data in user database using ajax
$.ajax({
	url: '/player',
	type: 'GET',
	dataType: 'JSON'
	success: function(data){
		Console.log(data)

	for(var prop in data){
		$('body').append('<li>' + data[prop] + '</li>')
	}	
	},
	error: function (err){
		console.log(err)
	}
})