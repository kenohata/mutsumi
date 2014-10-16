gulp = require "gulp"
jade = require "gulp-jade-php"
sass = require "gulp-sass"

gulp.task "jade", ->
  gulp
  .src "jade/**/*.jade"
  .pipe jade()
  .pipe gulp.dest "./"

gulp.task "sass", ->
  gulp
  .src "sass/*"
  .pipe sass sourceComments: "normal"
  .pipe gulp.dest "./"

gulp.task "watch", ->
  gulp.watch "sass/**", ["sass"]
  gulp.watch "jade/**", ["jade"]
