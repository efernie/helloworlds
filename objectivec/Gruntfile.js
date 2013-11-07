
var log = function log ( err, stdout, stderr, cb ) {
  if ( err ) console.error(err);
  console.log(stdout);
  console.log(stderr);
  cb();
}

module.exports = function ( grunt ) {
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),
    shell: {
      buildObjc: {
        options: {
          callback: log
        },
        // command: 'clang -fobjc-arc ' +
          // '-framework Foundation helloworld.m hellostrings.m ' +
          // '-o build/helloworld && ./build/helloworld'
        command: function () {
          var concatFileNames = '';
          grunt.file.recurse(__dirname, function ( abspath, rootdir, subdir, filename ) {
            if ( !subdir && filename && filename.indexOf('.m') !== -1 && filename.indexOf('.md') === -1 ) {
              concatFileNames += ' ' + filename;
            }
          });

          return 'clang -fobjc-arc ' +
            '-framework Foundation ' + concatFileNames + ' ' +
            '-o build/helloworld && ./build/helloworld';

          // return 'clang -fobjc-arc ' +
          //   '-framework Foundation helloworld.m hellostrings.m ' +
          //   '-o build/helloworld ';//&& ./build/helloworld';
        }
      },
    },
    watch: {
      shell: {
        files: ['*.m'],
        tasks: ['shell']
      }
    }
  });

  grunt.loadNpmTasks('grunt-shell');
  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.registerTask('default', ['shell']);
  grunt.registerTask('watches', ['shell','watch']);
}
