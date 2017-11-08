console.log('working')


$.ajax({
	url:'/home/movie',
	type: 'GET',
	dataType: 'JSON',
	success: function(data){
		console.log(data)
		var h3 = $('<h3>')
		$('body').append(h3)
		for(var i=0; i < data.length; i++){
			h3.append(data[i].title + ' ' + data[i].year + '<br>' + data[i].director + '<br>' + data[i].starring + '<br>' + 'Rotten Tomatoes: ' + data[i].rt + '%' + '<br>' + '<br>')
		}

	},
	error: function(err){
		console.log(err)
	}

})