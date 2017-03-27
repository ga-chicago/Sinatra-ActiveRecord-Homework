console.log('hey this is linked')
$.ajax({
	type: 'GET',
	url: '/home/burritos',
	dataType: 'json',
	success: function(data){
		console.log(data);
		for (var i = 0; i < data.length; i++){
			$('body').append("<div>" + "<h1>" + data[i].name + "</h1>" + "<p>" + "Protien is " + data[i].protien + "<br>" + "Wrapped or unwrapped? " + data[i].wrapped + "<br>" + "spicy factor 1-10: " + data[i].spicy + "<br>" + "Price " + data[i].price + "</p>" + "<button class='patch' id='patch'>" + "patch" + "</button>" + "<button class='delete' id='delete'>" + "delete" + "</button>" + "</div>")
		}
	}

});

$('.delete').on('click', function(e){
	var $info = $(e.target).parent().parent();
	var id = $info.data('id')
	$.ajax({
		url: '/home/' + id,
		type: 'DELETE',
		success: function(res){
			console.log(res)
		}
	})
})