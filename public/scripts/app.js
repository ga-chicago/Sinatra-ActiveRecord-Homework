console.log('hey this is linked')

$.ajax({
  url: '/',
  type: 'GET',
  dataType: 'JSON',
  success: function(data){
    console.log(data)
    //div with an id of whatever that hash is called
    // inside the div make an unordered list
    // of your data


    for(var prop in data){
      $('body').append('<h1>'+ data[prop] + "</h1>")
    }
  },
  error: function(err){
    console.log(err)
  }
})


$('.delete').on('click', function(e){
  var id = $(e.target).data('id')
  $a.jax({
    url: '/candy' + id
    type: 'DELETE',
    success: function(result){
      console.log(result)
    }
  })
})

$('.update').on('click', function(e){
  var id = $(e.target).data('id');
  var type = $(e.target).closest('li').find('.type').val;
  var sweetness = $(e.target).closest('li').find('.sweetness').val;
  var price = $(e.target).closest('li').find('.price').val;
  var health = $(e.target).closest('li').find('.health').val;
  console.log(name);
  $a.jax({
    url: '/candy' + id
    type: 'PATCH',
    data: {
      type: type,
      sweetness: sweetness,
      price: price,
      health: health

    },

success: function(response){
  console.log(response);
}

  })