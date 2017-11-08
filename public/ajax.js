$.ajax({

	url:'http://localhost:9292/guitars',
	type: 'GET',
	dataType: 'Json',
	success: (res)=>{
		console.log(res, 'this is the res')
					
		})
	},
	error: (err)=>{
		console.log(err,'this is an error')
	}
})