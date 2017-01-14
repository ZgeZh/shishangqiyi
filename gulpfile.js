//请求模块
var gulp = require('gulp');
var sass = require('gulp-sass');
var browserSync = require('browser-sync').create();
var reload = browserSync.reload;


gulp.task('serve',['sass'],function(){
	browserSync.init({
		server: "src"
	});

	gulp.watch("src/sass/*.scss",['sass']);
	gulp.watch("src/*.html").on('change',reload);
});

gulp.task('sass',function(){
	//查找需要编译的文件
	return gulp.src('src/sass/*.scss')
		//编译scss文件
		.pipe(sass({outputStyle:'compact'}).on('error', sass.logError))
		//输出文件
		.pipe(gulp.dest('src/css'))

		.pipe(reload({stream: true}));
});

gulp.task('default',['serve']);




/*
//创建并执行任务  目的：编译sass文件
gulp.task('sass',function(){
	//查找需要编译的文件
	gulp.src('src/sass/*.scss')
		//编译scss文件
		.pipe(sass({outputStyle:'compact'}).on('error', sass.logError))
		//输出文件
		.pipe(gulp.dest('src/css'))
});

//监听sass文件
gulp.task('monitorSass',function(){
	//监听文件，当文件有修改时，执行indexSass任务
	gulp.watch('src/sass/*.scss',['sass']);
});
*/




