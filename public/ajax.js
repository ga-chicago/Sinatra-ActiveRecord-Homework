$.ajax({
	url: '/dogs/doggos',
	type: 'GET',
	dataType: 'JSON',
	success: (res)=>{
		const $div = $('<div>');
		res.forEach((el)=>{
			const $h1 = $('<h1>');
			$h1.text(el.name)
			$div.append($h1)
			for (variable in el){
				if(variable === 'id' || variable === 'name')
					continue;
				const $li = $('<li>');
				$li.text(el[variable]);
				$div.append($li);
			}
		})
		$('ul').append($div);
	},
	error: (err)=>{
		console.log(err, 'error')
	}
})