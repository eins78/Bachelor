module.exports = function(grunt) {

  // Project configuration.
  grunt.initConfig({
    
    shell: {
      build: {
        command: 'pandoc -i "index.md" -o "index.html" -t html5 --section --template=template.html',
        options: {
          stdout: true,
          failOnError: true
        }
      }
    },
    
    watch: {
      scripts: {
        files: ['index.md', 'template.html'],
        tasks: ['build'],
        options: {
          spawn: false,
          livereload: true
        },
      },
    },
    
    connect: {
      server: {
        options: {
          port: 3000,
          hostname: 'localhost',
          livereload: true,
          open: true
        }
      }
    }
    
  });

  grunt.loadNpmTasks('grunt-shell');
  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-contrib-connect');

  grunt.registerTask('default', ['auto']);
  grunt.registerTask('build', ['shell:build']);
  grunt.registerTask('auto', ['connect', 'watch']);

};