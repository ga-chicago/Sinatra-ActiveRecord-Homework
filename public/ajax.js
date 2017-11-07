$.ajax({
	url: 'http://localhos:9292/dogs',
	type: 'GET',
	dataType: 'Json',
	success: (res)=>{
		res.forEach((el)=>{
			console.log(el)
			const $div = $('<div>');
			for (variable in el){
				const $li = $('<li>');
				$li.text(variable);
				$div.append($li);
			}
		})
		$('ul').append($div);
	},
	error: (err)=>{
		console.log(err, 'error')
	}
})