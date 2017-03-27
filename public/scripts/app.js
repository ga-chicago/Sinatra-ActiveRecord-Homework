console.log('yo');

$.ajax({
	url: '/home/username',
	type: 'GET',
	dataType: 'json',

	success: function(data){
		console.log(data);

		$('body').append('<h1 />');
		$('h1').html("Created users")
		$('body').append('<ul />');
		var ul = $('ul');
		for (var i = 0; i < data.length; i ++){
			ul.append("<li>" + data[i].username + "<br>" + data[i].first_name + "<br>" + data[i].last_name + "<br>" + data[i].email + "<br>" + data[i].phone + "</li>");
		}

	},

	error: function(err){
		console.log(err)
	}
})