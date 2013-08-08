# The Setup


> "SIE HABEN RECHT - UNSER SCHREIBZEUG ARBEITET MIT AN UNSEREN GEDANKEN"
>
> — *Friedrich Nietzsche writing on an early typewriter, 1882* [[-@Nietzsche:schreibzeug]], quoted after [@stingelin:schreibzeug, p. 304]

## People

**author**

:   The author is, obviously, the most important person of any publication. \
    It is the person or people responsible or creating the content.
    If there are several co-authors, a strategy for managing their changes has to be devised.


**editor**

:   An editor does not create content, but does contribute editorial changes, correcting errors, etc.

**maintainer**

:   A maintainer is administering the technical part of the process. Can be someone not being involved in the content creation as well as an author or editor.


## Phases

**Draft**

:   The earliest stage of any document. The content is still evolving.


**Edit**

:   The content is mostly finished. Proofreading and other content-polishing occurs.


**Publish**

:   The content is final. The output is checked for errors, optimized for the target media and then printed or uploaded.


**Update** 

:   Sometimes, there are updates to a document, be it for correcting errors or incorporating new information. That means passing through *Edit* and *Publish*, with the added requirement that a record of the new changes has to be kept (usually called "Errata")


## Tools

An *integrated* development environment (**`IDE`**) for `papermill` 
is a long-term goal of the project, but because the important modules
of the framework are all tried and proven, there are already diverse tools
that support these modules.

However, the ability to 'mix and match' the tools according to personal
taste and requirements 


![Tools used to produce this publication](../_stash/mytools.png)



### Text editor

As we already have established, we don't want to use a word processor because we are working with plain text.

Generally, we can distinguish between different kinds of text editors: 

a) the very minimalistic editors, with limited functionality, like the ones that ship 
with an operating system (like *Windows*' `Notepad.exe` or *Apple*'s `TextEdit.app`).
b) **`IDE`**s, integrated development environments

Of course, there also exists every gradation in between those two. 

Some of these editors already have some support for Markdown. They 'understand' the basic syntax of the formatting language, which enables them to offer features 
known from programming languages:

- *Syntax highlighting:* Making the plain text source more **readable** by using colors, font sizes to visualize the relation of syntax and text. Also helps to **spot errors** in the syntax more quickly (and, after getting used to it, almost intuitively)

- *Shortcuts:* Offer quicker way to type the syntax. Although with Markdown the syntax is as minimal as possible, they still can be of great help. \

  They come in the following forms:
    * 

Like other text editors that have support

Recommendations: 

- [`TextMate`][tm] (Mac, 'open source')
- [`SublimeText`][st] (Mac, Windows, Linux; not 'open source' but friendly)

[tm]: http://macromates.com
[st]: http://www.sublimetext.com

These both have the ability to be extended with 'bundles', and already ship with a 'Markdown bundle' built-in.


## Communication


### README

The most easy way and fool-proof to communicate inside a project is, 
like the content itself, text-based.

A straightforward solution, which is often used in software, is the README file. It is a text file in which general information *about* the project is collected. 
The main advantage of this is that, when using version control, this file will always be stored and versioned together with the contents.

## Project

`papermill` is, at its core, a formalized project structure and configuration.

<!-- These are the elements you need to know about. It might seem complicated, but most of it is only needed for more complicated projects. -->

You can start you own project from a [**stationery**](https://github.com/papermill/stationery) 
– pre-configured [templates] that include everything mentioned here. There are several types to choose from, like 'Simple' (most basic) and 'Paper' (for scientific work).

[templates]: <https://en.wikipedia.org/wiki/Scaffold_(programming)>



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

**'Documents'** contain the textual content of your project. \
They are plain text files, formatted in `Markdown`.^[and encoded in 'UTF-8', also known as 'Unicode'] 

For more flexibility while writing, a document can also be its own **folder**. 
All `Markdown`-files in it will be combined
into one single document, in alphabetical order.

Practically, this means that you can just start writing new chapters whenever you want, and take care about their order later on, just by renaming the files. A good idea is to simply use a "`number`-*" prefix.

```
    Project/
    ├── Text/
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
    ├── Drafts/
    │   └── an-unfinished-chapter.md
    ├── Text/
    │   ├── 1-intro.md
    │   ├── 2-a-chapter.md
    │   └── 3-another-chapter.md
    └── papermill.json
        └── > { "input": [ "Text" ] }
```

A project can also have more than one document as inputs. \
This can for example be used to produce different parts of a dissertation which should be printed separately.

Their *content should be related*, otherwise they would be two different projects.

The following configuration would also produce a separate output from the `Drafts/` folder in order to preview it: 

```
    Project/
    ├── Drafts/
    ├── Text/
    └── papermill.json
        └── > { "input": [ "Text", "Drafts" ] }
```

**Important:** Any further sub-folders inside an 'input' folder should be avoided. 

Files in them will not be combined, but it also not a good idea to move source files between different 'depths' of folders if there are images in them (see the chapter on *Assets*).

In the above example, moving the unfinished chapter to the `Text/` folder would not cause any problems because they both have the same 'depth'.


## Configuration

The **configuration** file is the second most important part of any project. \
It contains all the information *about* the project needed to produce 'output'.

It is also a text file, but encoded in [`JSON`](http://www.JSON.org/), 
"a lightweight data interchange format. [`…`] It is readable by humans and machines [and] easy to use." [@guide:goodparts, p. 136]


In general, the configuration lists the following items:

- **Meta-data** about the publication
- **Input**: One or more document's sources
- **Output**: How to output the 'input' for web and print.

A simple example looks like this:

````js
    {
      "input": "doc.md",
      "output": {
          "web": false,
          "documentclass": "article"
      }
    }
````

Again, it is recommended that you choose a `papermill` Stationery to start of your project, as it comes with a matching configuration file. 

The detailed description of the configuration file is available in the Chapter *mill*, Section [papermill.json].


## `git`

See the *Versioning* chapter in the **Introduction** for 
an overview of the concepts and term that you should know 
when working with git.

It is generally not recommended to track 'generated content' with **`git`**, 
if that content is generated from sources that are already tracked. 
Not only does it needlessly increase the size of the repository, 
it is also a source of confusion since all merge conflicts have to be solved 
two times, once for the source and again for the result.

**`git`** can **ignore** files that should not be tracked, for this or any other reason. This is configured in a **`hidden file`** named ['.gitignore'](http://git-scm.com/docs/gitignore). 
Again, when using a `papermill` stationery, this is already taken care of.


### Automatic committing

If you don't want to commit manually, there are two software tools that can
generate a commit message with as much info as you want and can get out of the computer you are working on.

Both can also be set up to work *in the background*. 
This is very useful for novel users, since they don't have to interact with the version control system at all. 
It could also be used by advanced users who want to send a steady 'stream' of their work into their own 'live' branch, integrating a sum of those later on.

*Installation and usage instructions are available at the project's own sites.*

-  [`flashbake`](http://bitbucketlabs.net/flashbake/) – commissioned by Cory Doctorow and written by Thomas Gideon.

    *  User friendly, written in the `python` programming language
    *  Extendable with (`python`) plugins
    *  Runs on `Linux` (well) and `Mac OS X` (manual work needed) 

- [`git-o-mat`](https://github.com/papermill/git-o-mat) – inspired by `flashbake`, and yet another `papermill` prototype

    *  Very simple, written as a `shell` script
    *  Extendable with your own scripts (for message generation)
    *  Runs well on `Linux` and `Mac OS X`

