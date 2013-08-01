# Setup

`papermill` is, at it's core, a formalized project structure with configuration.

These are the elements you need to know about. It might seem complicated, but keep in mind that you can start of you own project


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

### Input

As we have already seen in the examples above, the configuration defines an 'input', which is at least a **`path`** to a document.

It can be just a string, defining the **`path`** to a document.

```
    "input": "document.md"
```

It can also be contain more properties, where one of them must be a **`path`**:

```
    "input": {
      "path": "document.md"
    }
```


### Output

The 'output' property defines how the 'input' documents will be converted to an format suitable for reading (*'compiled'*).

I