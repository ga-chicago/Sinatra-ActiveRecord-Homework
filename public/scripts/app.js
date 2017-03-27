console.log('hey this is linked')
$.ajax({
	type: 'GET',
	url: '/home/burritos',
	dataType: 'json',
	success: function(data){
		console.log(data);
		for (var i = 0; i < data.length; i++){
			$('body').append("<div>" + "<h1>" + data[i].name + "</h1>" + "<p>" + "Protien is " + data[i].protien + "<br>" + "Wrapped or unwrapped? " + data[i].wrapped + "<br>" + "spicy factor 1-10: " + data[i].spicy + "<br>" + "Price " + data[i].price + "</p>" + "</div>")
		}
	}

});

$('.delete').on('click', function(e){
  var id = $(e.target).data('id');
  $.ajax({
    url: '/burrito/' + id,
    type: 'DELETE',
    success: function(result){
      console.log(result);
    }
  })
})

$('.update').on('click', function(e){
	var id = $(e.target).data('id');
	var name = $(e.target).closest('li').find('.name').val();
	var protien = $(e.target).closest('li').find('.protien').val();
	var wrapped = $(e.target).closest('li').find('.wrapped').val();
	var spicy = $(e.target).closest('li').find('.spicy').val();
	var price = $(e.target).closest('li').find('.price').val();
	$.ajax({
		url: '/burrito/' + id,
		type: 'PATCH',
		data: {
			name: name,
			protien: protien,
			wrapped: wrapped,
			spicy: spicy,
			price: price
		},
		success: function(res){
			console.log(res);
		}
	})
})