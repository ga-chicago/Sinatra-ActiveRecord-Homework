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