module.exports = function(grunt) {

  // Project configuration.
  grunt.initConfig({
    "input": "index.md",
    "output": "index.html",
    
    shell: {
      options: {
        stdout: true,
        failOnError: true
      },
      build: {
        command: 'pandoc -i <%= input %> -o <%= output %> -t revealjs --smart --section --template=template.html',
},
      buildDev: {
        command: 'pandoc -i <%= input %> -o <%= output %> -t html5 --smart --section --template=template.html',
},
    },
    
    watch: {
      scripts: {
        files: ['index.md', 'template.html'],
        tasks: ['buildDev'],
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
  grunt.registerTask('buildDev', ['shell:buildDev']);
  grunt.registerTask('auto', ['buildDev', 'connect', 'watch']);

};