
module.exports = function (grunt) {

  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),
    mocha: {
      index: [''],
      options: {
        reporter: 'Spec',
        run: true
      }
    },
    clean: {
      build: ['']
    },

    livereload: {
      port: 35729
    },
    watch : {
      mocha: {
        files: [''],
        tasks: ['']
      }
     }
  });

  // grunt.loadNpmTasks('grunt-contrib');
  grunt.loadNpmTasks('grunt-contrib-clean');
  grunt.loadNpmTasks('grunt-mocha');
  grunt.loadNpmTasks('grunt-contrib-livereload');
  grunt.loadNpmTasks('grunt-regarde');
  grunt.renameTask('regarde', 'watch');

  // Tasks
  grunt.registerTask('default', ['']);
  grunt.registerTask('test',['mocha']);

  grunt.registerTask('build', ['']);

};
