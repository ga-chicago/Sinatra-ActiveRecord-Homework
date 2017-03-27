$.ajax({
  url: '/home/mexican',
  data: "GET",
  dataType: "JSON",
  success: function(data){
    console.log(data)
    var div = $('<div>')
    for (var prop in data){
      div.append('<h3>' + data[prop].name + ", " + data[prop].calories + ", " + data[prop].carbs + ", " + data[prop].protein + ", " + data[prop].healthy + '</h3>')
    }
    $('body').append(div)
  },
  error: function(err){
    console.log(err)
  }
})
