console.log('file is linked!')

$.ajax({
	url: '/home/user',
	type: 'GET',
	dataType: 'JSON'
	success: function(data){
		console.log(data)


		for(var i=0; i < data.length, i++){
			$('body').append("<p>" + data[i].username + "<br>" + data[i].password + "</p>")
		},
		error: function(err){
			console.log(err)
		}

	}
})