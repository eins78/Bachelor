# Setup


````{.TODO}
TODO:
- better intro
````

`papermill` is, at its core, a formalized project structure with configuration.

These are the elements you need to know about. It might seem complicated, but most of it is only needed for more complicated projects.

Also, keep in mind that you can start you own project from a [**stationery**](https://github.com/papermill/stationery) 
– preconfigured [templates] that include everything mentioned here. There are several types to choose from, like 'Simple' (most basic) and 'Paper' (for scientific work).

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

The follwing configuration would also produce a seperate output from the `Drafts/` folder in order to preview it: 

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
"a lightweight data interchange format. […] It is readable by humans and machines [and] easy to use." [@guide:goodparts, p. 136]


In general, the configuration lists the following items:

- **Meta-data** about the publication
- **Input**: One or more document's sources
- **Output**: How to output the 'input' for web and print.

A simple example looks like this:

````js
    {
      "input": "doc.md"
    }
````

It is recommended that you choose a `papermill` Stationery to start of your project, as it comes with a matching configuration file. 

The detailed description of the configuration file is available in the Chapter *mill*, Section [papermill.json].


## `git`

See the *Versioning* chapter in the **Introduction** for 
an overview of the concepts and term that you should know 
when working with git.

It is generally not recommended to track 'generated content' with **`git`**, 
if that content is generated from sources that are already tracked. 
Not only does it needlessly increase the size of the repository, 
it is also a source of confusing since all merge conflicts have to be solved 
two times, for the source and the result.

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




