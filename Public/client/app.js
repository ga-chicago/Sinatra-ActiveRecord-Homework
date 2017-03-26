console.log('this is linked up')


$.ajax({
	url: '/home/music',
	type: 'GET',
	dataType: 'JSON',
	success: function(data){
		console.log(data)
		
		for (var i=0; i < data.length; i++){
			$('body').append('<p>' + data[i].band + "<br>" + data[i].best_album + "<br>" + data[i].fav_song + "<br>" + data[i].grammy + '</p>');
		}

	},
	error:function(err){
		console.log(err)
	}
})