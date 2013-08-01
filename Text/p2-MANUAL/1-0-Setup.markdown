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

```
    "input": "document.md"
```

It can also be an object with more configuration:

```
    "input": {
      "title": "My Document",
      "path": "document.md"
    }
```

This object can also contain a 'list' of documents, which will be treated as subfolders of the parent **`path`**:

```
    "input": {
      "path": "Texts",
      "list": {
        "First-Text.md",
        "Other-Text.md"
      }
    }
```


### Output

The 'output' property defines how the 'input' documents will be converted to an format suitable for reading (*'compiled'*).

I