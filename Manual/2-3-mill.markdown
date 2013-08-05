## mill

`mill` is the backend for the papermill project, combining all the pieces described in the software stack



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


