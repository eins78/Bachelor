# Input

## text editor

- You'll want a good one.

What "good" means in the *context* of a text editor is the source of 
almost religious between software developers, but this is not our concern here.

Choose a text editor *you* are comfortable with.
It should support plain text, but even Microsoft Word does this (reluctantly).

Generally, we can distinguish between two different kinds of text editors: 
There are the very minimalistic editors, with limited functionality, like the ones that ship 
with an operating system (like Windows' `Notepad.exe` or Apple's `TextEdit.app`).
And there are IDEs, integrated developement environments; and of course every step in between.


## project structure

`papermill` is, at it's core, a formalized configuration, which should be able to suit all kinds of long-form text.

The basic rules are very simple:

* every **'project'** has it's own folder
* there is one **'configuration'** file
* there is at least one **'document'** in the folder and the configuration

```
Project/
├── document.md
└── papermill.json
    └─> { "input": "document.md" }
```

**'Documents'** are plain text files, formatted in `Markdown`. \
For more flexibility while writing, a document can also be it's own **folder**. 
All `Markdown`-files in it will be combined
into one single document, in alphabetical order.
Practically, this means that you can just start writing a new chapter whenever you want, and take care about their order later on, just by renaming the files. A good idea is to simply use 1 `number-*` prefix.

```
Project/
├── Text
│   ├── 1-intro.md
│   ├── 2-a-chapter.md
│   └── 3-another-chapter.md
└── papermill.json
    └─> { "input": "Text" }
```

The **configuration** file is the second most important part of your project. \
It is also a text file, but enconded in [`JSON`](http://www.JSON.org/), 
"a lightweight data interchange format. […] It is readable by humans and machines. It is easy to implement and easy to use. There is a lot of material about JSON at http://www.JSON.org/.

As we have seen in the examples above, it 

While the document can be internally seperated into distinct parts, these always have a sequential order, so that the comlete text can be seen as a single stream.

This is not a contradiction to the concept of 'Hypertext', where one part of a document can 'link' to a different part of or even a completely different document. 
This is possible regardless of the linearity of the document.

There are certainly projects which don't adhere to this structure, like a **`wiki`**, possibly consisting of thousands of documents. 
While they could theoretically be 'linearized' (for example by sorting them alphabetically); 
and thus technically could be used as in 'input', these are outside of the scope of `papermill`.

## (**`pandoc`**'s) Markdown


## Citations and Bibliography

- everybody needs to quote stuff
- with papermill, like with `LaTeX`, you keep a 'database' of all the items you quote or otherwise reference.
- each item in db has id
- you then use a link-like syntax, with the id, like so: `See [@id, pp. 23-42]`


### Database

- bibtex
- json
- config: either
    - just 1 .bib files
    - { "bibliography": "foo.bib" }


### Citation Style

- is a matter of taste and style
- but also differs by institution

- [csl files](http://citationstyles.org)
- [download](http://zotero.org/styles) the one which suits your context most
- general distinction: numeric, author-date
- if unsure, stick to the standards
      * numeric
        * [IEEEE](http://zotero.org/styles/ieee-with-url)
        * [DIN 1505-2](http://zotero.org/styles/din-1505-2-numeric)
      * author/date
        * [DIN 1505-2](http://zotero.org/styles/din-1505-2)
        * [Harvard](http://zotero.org/styles/harvard1) ([German](http://zotero.org/styles/harvard7de))
