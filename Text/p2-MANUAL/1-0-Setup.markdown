# Setup

`papermill` is, at it's core, a formalized project structure with configuration.

These are the elements you need to know about. It might seem complicated, but most of that is only needed for more complicated projects.

Also, keep in mind that you can start you own project from a [**stationery**](https://github.com/papermill/stationery) 
– preconfigured templates that include everything mentioned here. The are several types to choose from, like 'Simple' (most basic) and 'Paper' (for scientific work).


## Project

The basic rules are very simple:

* every **'project'** has it's own folder
* there is one **'configuration'** file
* there is at least one **'document'**, in the folder and the configuration

```
    Project/
    ├── document.md
    └── papermill.json
        └─> { "input": "document.md" }
```


## Document

**'Documents'** contain the content of your project. \
They are plain text files, formatted in `Markdown`. 

For more flexibility while writing, a document can also be it's own **folder**. 
All `Markdown`-files in it will be combined
into one single document, in alphabetical order.

Practically, this means that you can just start writing new chapters whenever you want, and take care about their order later on, just by renaming the files. A good idea is to simply use a "`number`-*" prefix.

```
    Project/
    ├── Text
    │   ├── 1-intro.md
    │   ├── 2-a-chapter.md
    │   └── 3-another-chapter.md
    └── papermill.json
        └─> { "input": "Text" }
```

A project can have more than one document, although the convention is that their *content should be related*. 
This can for example be used to produce different parts of a dissertation that should be printed seperately.

```
    Project/
    ├── Text
    │   ├── 1-intro.md
    │   ├── 2-a-chapter.md
    │   └── 3-another-chapter.md
    ├── More-Text.md
    └── papermill.json
        └── > { "input": [ "Text", "More-Text.md" ] }
```

## Configuration

The **configuration** file is the second most important part of a project. \
It contains all the information *about* the project needed to produce 'output'.

It is also a text file, but enconded in [`JSON`](http://www.JSON.org/), 
"a lightweight data interchange format. […] It is readable by humans and machines [and] easy to use." [@js:goodparts, p. 136]

<!-- Most of the properties are self explanatory, so the rest of this chapter is optional reading, meaning it should be consulted when needed.  -->

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

Because the document conversion is handled by **`pandoc`**, all it's settings are supported (written a little bit different, `--some-setting` becomes `someSetting`). 

These are the most important settings (for a complete list, see [`pandoc`'s User Guide]()): 

- `read`: input format
- `write` output format
- `strict`: enable old-school markdown
- `smart`: smart typography (`"foo"` -> `“foo”`)
- `normalize`
- `template`
- `toc`
- `noHighlight`
- `highlightStyle`
- `includeInHeader`
- `includeBeforeBody`
- `includeAfterBody`
- `selfContained`
- `chapters`
- `numberSections`
- `css`
- `bibliography`
- `csl`
- `indentedCodeClasses`
- `variable`


For reference, these are the complete default settings, generall and for both targets: 

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