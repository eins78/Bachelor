\part{C0DE}

# `mill`

## mill-cli.js




                    _   _  
                o  | | | | 
      _  _  _      | | | | 
     / |/ |/ |  |  |/  |/  
       |  |  |_/|_/|__/|__/


This is the application running as `mill` command line interface.
It is directly **require()**-d and **start()**-ed by the `./bin/mill` stub.

The stub is the only 'real' shell script in this project. That means it is the
only file directly called by the operating system. 
That is also the reason it needs a "hashbang" as it's first line.

Condensed to its main functionality, the stub looks like this 
<small>(and btw it is just copied from [jitsu's cli](https://github.com/nodejitsu/jitsu/blob/master/bin/jitsu))</small>:

```js
#!/usr/bin/env node

var mill = require('../mill-cli.js');

mill.start(function (err) {
  process.exit(err ? 1 : 0);
});
```

 ---

First, we need to **require()** some modules from:

- the `node.js` core
    * *path* for working with paths


  

```javascript
var path = require('path'),

```





- the npm registry (these need to be declared as dependencies in `package.json`, so they will be **install**ed by `npm`)
    * the *flatiron* anti-framework 


  

```javascript
    flatiron = require('flatiron');

```





- (some modules will be built in) 

We are a flatiron app!!!11!! So proud.


  

```javascript
var app = mill = module.exports = flatiron.app;


```





From flatiron, we get a bunch of stuff (but not too much)
- configuration management by nconf // TODO: move to module


  

```javascript
app.config.file({ file: path.join(__dirname, 'config', 'config.json') });


```





FIXME: set the dir manually 


  

```javascript
app.config.set('cwd', process.cwd);
  

```





- also use the "cli" plugin (enables lazy-loading commands and color output)


  

```javascript
app.use(flatiron.plugins.cli, {
  source: path.join(__dirname, 'lib', 'commands'),
  

```





### Usage






The 'usage' information will be show when no (valid) command was given.


  

```javascript
  "notFoundUsage": true,
  

```





It is an array of strings, which will be seperated by line breaks.
We start it with our ASCII logo, and append the text to that.


  

```javascript
  usage: app.config.get('banner').concat([
    'Commands:',
    'mill new "Project Title" [-s paper|simple]     Setup a new project',
    'mill print [/path/to/project]                  Output project to PDF',
    'mill web [/path/to/project]                    Output project to HTML',
    'mill help <command>                            Show more help',
    ''
  ]),
});


```






We also use our own modules

- Utility functions


  

```javascript
app.use(require('./lib/utils'));

```





- Command Shortcuts


  

```javascript
require('./lib/alias');


```






This finishes the **mill** `CLI`.


## mill-build.js




A module to build output from pm-config



  

```javascript
var fs = require('graceful-fs'),
    path = require('path'),
    mkdirp = require('mkdirp'),
    async = require('async'),
    f = require('underscore'),
    pandoc = require('jandoc-async');

function build(baseConfig, callback, app) { // `app` is optional
  
  var pandocConfig = {},
      millConfig,
      c = millConfig;
      

```





Handle configuration format: 

    millConfig = {
      'files': ['lorem-ipsum.markdown'],
      'output_dir': 'foo',
      'pandoc': {…}
    }






Just copy *baseConfig* for now, 
the *files* array is handled inside an async `forEach(file)`.


  

```javascript
  millConfig = baseConfig;


```





f.extend(
  // target
  pandocConfig,
  // base config from app, without internal values
  f.omit(millConfig, 'output_format'),
  // build file paths from conf
  { 
    'input': file.path,
    'output': path.join(c.cwd, c.output_dir, file.basename),
    'write': c.format,
    'files': null
  }
);






create the output dir


  

```javascript
  mkdirp(millConfig.output_dir, function () {
    

```





TODO: copy assets…






build each configured file in 'files' array


  

```javascript
    async.each(millConfig.files, function (inputfile) {
        

```





handle file path settings etc.


  

```javascript
      var file;
            
      file = {
        path: path.join(millConfig.cwd, inputfile), 
        ext: path.extname(inputfile),
        basename: path.basename(inputfile)
      };
    

```





Combine per-file configuration in order:



  

```javascript
      var pandocConfig = {};
      f.extend(

```





- target


  

```javascript
        pandocConfig,

```





- base config for this run


  

```javascript
        millConfig.pandoc,

```





- built file paths from conf


  

```javascript
        { 
          'input': file.path,
          'output': path.join(millConfig.cwd, millConfig.output_dir, millConfig.format),
          'files': null
        }
      );
    

```





run pandoc with config


  

```javascript
      if (app) app.log.debug(config);
    
      pandoc(pandocConfig, function (err, res) {
        callback(err || res);
      });

    }, function (err) {
    

```





callback after `async.each()`


  

```javascript
      callback(err || null);
    
    });
  
  });
  
};


```





export as module


  

```javascript
module.exports = build;

```



