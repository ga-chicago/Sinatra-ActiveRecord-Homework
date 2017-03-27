var gulp = require('gulp'),
    less = require('gulp-less');

gulp.task('compile-less', function(){
    gulp.src('./public/styles/styles.less')
    .pipe(less())
    .pipe(gulp.dest('./public/styles'))
});

gulp.task('watch', function(){
    gulp.watch(['./public/styles/**/*.less'], ['less'])
});

gulp.task('default', ['watch', 'compile-less']);
