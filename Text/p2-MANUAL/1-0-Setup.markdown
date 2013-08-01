# Setup

## project structure

`papermill` is, at it's core, a formalized configuration, aiming to suit all kinds of long-form text.

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

**'Documents'** contain the content of your project.

They are plain text files, formatted in `Markdown`. 

For more flexibility while writing, a document can also be it's own **folder**. 
All `Markdown`-files in it will be combined
into one single document, in alphabetical order.

Practically, this means that you can just start writing a new chapter whenever you want, and take care about their order later on, just by renaming the files. A good idea is to simply use a "`number`-*" prefix.

```
    Project/
    ├── Text
    │   ├── 1-intro.md
    │   ├── 2-a-chapter.md
    │   └── 3-another-chapter.md
    └── papermill.json
        └─> { "input": "Text" }
```

A project also can have more than one document, although the convention is that their *content should be related*.  This can for example be used to produce different parts of a dissertation that should be printed seperately.


The **configuration** file is the second most important part of a project. It contains all the information *about* the project needed to produce 'output'. \

It is also a text file, but enconded in [`JSON`](http://www.JSON.org/), 
"a lightweight data interchange format. […] It is readable by humans and machines [and] easy to use." [@js:goodparts, p. 136]



As we have seen in the examples above, it 

While the document can be internally seperated into distinct parts, these always have a sequential order, so that the comlete text can be seen as a single stream.

This is not a contradiction to the concept of 'Hypertext', where one part of a document can 'link' to a different part of or even a completely different document. 
This is possible regardless of the linearity of the document.

There are certainly projects which don't adhere to this structure, like a **`wiki`**, possibly consisting of thousands of documents. 
While they could theoretically be 'linearized' (for example by sorting them alphabetically); 
and thus technically could be used as in 'input', these are outside of the scope of `papermill`.