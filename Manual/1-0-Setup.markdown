# Setup

`papermill` is, at its core, a formalized project structure with configuration.

These are the elements you need to know about. It might seem complicated, but most of that is only needed for more complicated projects.

Also, keep in mind that you can start you own project from a [**stationery**](https://github.com/papermill/stationery) 
– preconfigured [templates] that include everything mentioned here. The are several types to choose from, like 'Simple' (most basic) and 'Paper' (for scientific work).

[templates]: <https://en.wikipedia.org/wiki/Scaffold_(programming)>


## Project

The basic rules are very simple:

* every **'project'** has its own folder
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

For more flexibility while writing, a document can also be its own **folder**. 
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

While writing, any other files or folders in the project directory will not be considered as input.

For example, unfinished chapters could be stored in a `Drafts/` folder.

```
    Project/
    ├── Drafts
    │   └── an-unfinished-chapter.md
    ├── Text
    │   ├── 1-intro.md
    │   ├── 2-a-chapter.md
    │   └── 3-another-chapter.md
    └── papermill.json
        └── > { "input": [ "Text" ] }
```

A project can also have more than one document as an input. \
This can for example be used to produce different parts of a dissertation that should be printed separately.

Their *content should be related*, otherwise they would be two different projects.

This could for example be used to also produce an output from a `Drafts/` folder in order to preview it.

```
    Project/
    ├── Drafts
    │   └── an-unfinished-chapter.md
    ├── Text
    │   ├── 1-intro.md
    │   ├── 2-a-chapter.md
    │   └── 3-another-chapter.md
    ├── More-Text.md
    └── papermill.json
        └── > { "input": [ "Text", "Drafts" ] }
```

**Important:** Any further sub-folders inside an 'input' folder should be avoided. 

Files in them will not be combined, but it also not a good idea to move source files between different 'depths' of folders if there are images in them (see the chapter on *Assets*).

In the above example, moving the unfinished chapter to the `Text/` folder would not cause any problems because they both have the same 'depth'.


## Configuration

The **configuration** file is the second most important part of a project. \
It contains all the information *about* the project needed to produce 'output'.

It is also a text file, but encoded in [`JSON`](http://www.JSON.org/), 
"a lightweight data interchange format. […] It is readable by humans and machines [and] easy to use." [@js:goodparts, p. 136]


In general, the configuration lists the following items:

- **Meta-data** about the publication
- **Input**: One or more document's sources
- **Output**: How to output the 'input' for web and print.

A simple example looks like this:

````js
````

It is recommended that you choose a `papermill` Stationery to start of your project, as it comes with a matching configuration file. 

The detailed description of the configuration file is available in the Chapter *mill*, Section [papermill.json].

