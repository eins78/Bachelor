# mill

`mill` is a *Command Line Utility* written in [JavaScript] using [node.js].


[JavaScript]: https://en.wikipedia.org/wiki/Javascript
[node.js] : http://nodejs.org

## papermill.json

### Input

As we have already seen in the examples above, the configuration defines an 'input', which is at least a **`path`** to a document.

It can be just the **`path`** as a string:

```js
    "input": "document.md"
```

It can also be an object with more configuration:

```js
    "input": {
      "title": "My Document",
      "path": "document.md"
    }
```

This object can also contain a 'list' of documents, which will be treated as subfolders of the parent **`path`**:

```js
    "input": {
      "path": "Texts",
      "list": {
        "First-Text.md", // => 'Texts/First-Text.md'
        "Other-Text.md"
      }
    }
```


### Output

The 'output' defines how the 'input' documents will be converted (*'compiled'*) to a **target** (a format suitable for reading).

Again, a **`path`** needs to be given, but in this case it denotes a folder inside the project were the output files will be placed.


```js
    "output": "_output"
```

There are two default targets: 'print' and 'web'.
They come with their own built-in settings, and can also be further configured. 
For example, the 'print' option is configured to convert any links into footnotes, while they are untouched in the 'web' target.

These are the default values used when nothing is configured:

```js
    "output": {
      "path": "_output",
      "web": true,
      "print": true
    }
```

That means that if one the default targets is not wanted, it can be turned of by setting it to 'false'. 
Moreover, any additional settings for one of those targets can be given in an object:

```js
    "output": {
      "path": "_output",
      "web": false,
      "print": {
        "mysetting": true
      }
    }
```

Because the document conversion is handled by **`pandoc`**, all its settings are supported (written a little bit different, `--some-setting` becomes `someSetting`). 

These are the most important settings (for a complete list, see [`pandoc`'s User Guide]()): 

#### General Options

`bibliography`
:   path to bibliography file

`csl`
:   path to citation style

`selfContained`
:   include all assets in file *(web only)*


#### Visual/Layout Options

`toc`
:   enable a 'Table of Contents'

`smart`
:   [smart] typography (`"foo"` => “foo”)

[smart]: http://daringfireball.net/projects/smartypants/

`normalize`
:   normalize the whitespace

`noHighlight`
:   disable code syntax highlighting

`highlightStyle`
:   set syntax highlighting style

`chapters`
:   make chapters from top-level headings *(print only)*

`numberSections`
:   "Number section headings" *(print only)*


#### Content Options

`strict`
:   just use the original Markdown

`read`
:   - choose a Markdown flavor
        * `markdown`: pandoc's Markdown
        * `markdown_strict`: original Markdown
        * `markdown_github`: [GFM (GitHub flavored Markdown)][GFM]
        * `markdown_phpextra`: original Markdown
                                                      \
    - *or* build your own flavor: choose one as a base and enable or disable pandoc extension by adding them with a `+` or `-` sign
        * `{markdown_flavor}+{extension}-{extension}`
        * e.g.: `markdown_github+footnotes` for GFM with footnotes
                                                      \
    - *or* define any other input format supported by **`pandoc`** (HTML, LaTeX, restructuredText, textile, MediaWiki, …)

[GFM]: https://help.github.com/articles/github-flavored-markdown


#### Customizing Output

`template`
:   use a custom **`pandoc`** [template](https://github.com/papermill/pandoc-templates)(!)

`css`
:   use a custom style sheet *(web only)*

`includeInHeader`, `includeBeforeBody`, `includeAfterBody`
:   include other files (untouched) before conversion

`write`
:   any output format supported by **`pandoc`**

`variable`
:   set template variables

    * `author`
    * `title`
    * `date`
    * `lang`
    * `class` (=`documentclass`)
    * `mainfont`, `sansfont`, `monofont`, `mathfont`
    * `linkcolor`
    * `urlcolor`
    * `links-as-notes`


### Defaults

For reference, these are the complete **default settings**, general and for both targets: 

```js
    {
      "path": "_output",
      
      "read": "markdown",
      "standalone": true,
      "selfContained": true,
      "smart": true,
      "toc": true,
      "normalize": true,
      "numberSections": true,
      
      "web": {
        "write": "html5",
        "sectionDivs": true,
        "variable": {
          "webfont": true,
          "scripts": true
        }
      },
      
      "print": {
        "class": "report",
        "latexEngine": "xelatex",
        "variable": {
          "links-as-notes": true,
          "verbatim-in-note": true
        }
      }
    }
```
