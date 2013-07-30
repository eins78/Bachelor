# mill

`mill` is the backend for the papermill project, combining all the pieces described in the software stack


## build

### auto

If there is no valid configuration file found, instead of an error, 
we try our best at guessing what we should do.

This works for very simple setups:

- Just 1 markdown file, or a README and one other markdown file
- default settings will be used
    - output formats: print, web
    - output directory: `_output_`

Additionally, since there are no configuration values for anything, 
we use the default configuration as described below.

### configuration

The following configuration properties are supported in `papermill.json`.
Required fields are marked with a "**`*`**".

"author"/"authors"
:   name of the author (*string* or *array of strings*)

"title" **`*`**
:   the title of the project/document (*string*)

"input" **`*`**
:   either a "path" (*string*) or an *object*

"path"
:   file system path. can point to either file or folder, if it is a folder, all containg files will be combined into one.

#### Examples

very simple, will use the default formats: 

```js
{
  "author": "Marcus Aurelius", // can both also be set
  "title": "Lorem Ipsum",      // at the start of the text
  
  "input": "BA.md",   // use this file as input
  "output": "_output" // will output to this dir
}
```

more explicit:

```js
{
  "author": "Max F. Albrecht",
  "title": "Papermill. Books in a Browser",
  "bibliography": "bibliography.bib",
  
  "input": {
    "path": "Text",     // will combine all files in this folder
    "format": "markdown"
  },
  
  "output": {
    "path": "_output",
    "web": true,        // output to web
    "print": {          // output to print
      "class": "book"   // configure print output
    }
  }
}
```

multi-document:

[@include](../../../mill/examples/papermill_nts.json)


