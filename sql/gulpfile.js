const gulp = require('gulp');
const less = require('gulp-less');
var beautify = require('gulp-beautify');
 
gulp.task('beauty', function() {
  gulp.src('*.js')
    .pipe(beautify({indent_size: 2}))
    .pipe(gulp.dest('./dist/'))
});

gulp.task('less-css', () => {

  gulp.src('./public/styles/style.less')
    .pipe(less())
    .pipe(gulp.dest('./public/styles'))

});

gulp.task('watch', ()=>{
  gulp.watch('./public/styles/*.less')
});

gulp.task('default', ['less-css', 'watch']);
