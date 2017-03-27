
//require gulp and gulp-less
var gulp = require ('gulp')
	less = require ('gulp-less')

//tells gulp path of style.less file 
gulp.task('less', function(){
	gulp.src('./public/css/style.less')
	.pipe(less())
	.pipe(gulp.dest('./public/css'))
});

//watch for any files using .less 
gulp.task('watch', function (){
	gulp.watch(['./public/css/**/*.less'], ['less'])
});

//default action when you enter 'gulp'
gulp.task('default', ['watch', 'less']);
