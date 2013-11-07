
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
        command: 'clang -fobjc-arc ' +
          '-framework Foundation helloworld.m hellostrings.m ' +
          '-o build/helloworld && ./build/helloworld'
      }
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
  grunt.registerTask('watches', ['watch']);
}
