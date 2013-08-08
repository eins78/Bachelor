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



## Assets

Assets are all files that are needed to output a publication 
other than the text source.

In order to keep a project 'portable', all assets need to reside 
inside the project folder, otherwise it might only be compiled on 
the computer it was created.

If version control is used, this also ensures that all assets are 
tracked and all collaborators have access to them. 

*Note:* Because the assets may are also created using software, 
they could have a 'source' themselves: 
An image created in Photoshop would have a source '`.psd`' file 
and a resulting '`.jpg`' image.

As mentioned above, generated content should not be committed. 
How this applies to generated assets as well depends on the context 
of the project. In any case only the sources **or** the results should be tracked.

- If the assets are fairly static, or are the responsibility of either a 
  single collaborator or someone outside the project, the results can be
  committed. 
  
- If the **production** of the assets should happen **collaboratively**, 
  their sources should be committed. This requires that all 
  collaborators have *access to the software* producing the results, 
  which could be a problem when using commercial software. Also, 
  a mechanism must be in place so that the assets are *re-generated* 
  every time the sources change.
  
- In more complex cases, a [separate repository](http://git-scm.com/book/en/Git-Tools-Submodules) 
  for handling the assets could be created and the generated assets published elsewhere.



### Images

- needs relative paths from the document!
- Pixel: png for web and print
- Vector: svg for web, pdf for print
- Leave extension, and it will be svg/pdf depending on web/print!


### Bibliography

References to external sources, like books and articles is a requirement 
for many types of publications.

As shown in the *Markdown* section, there is an easy syntax to 
insert a reference anywhere in the text, using only an **identifier** 
and an optional location, 
like so: `See [@id, pp. 23-42]`.

However, for this to work a **database**, storing the actual meta-data 
pertaining to the identifier must exist, and be *configured* (`"bibliography": "foo.bib"`).

The recommended database is [`BibTeX`](https://en.wikipedia.org/wiki/Bibtex) format, also commonly used in **`TeX`**. 

Because it already widely used, there are diverse (GUI) programs available for all 
operating systems helping to maintain a `BibTeX` file.

The format has many idiosyncrasies, most of which are unfortunately shared by the GUIs. They are beyond the scope of this manual, but the `BibTeX` file used in 
it can serve as an example. It shows how to store the most commonly used types 
of media, including how cross-reference them (e.g. an article *in* a book). 
Moreover, since the `BibTeX` format is widely ambiguous, it shows a subset 
which *reliably work*.^[E.g. there is the media type 'electronic', 'url' and 'webpage', which could be used for web sites as sources, but only 'electronic' does work with all flavors of **`TeX`**]

*Example:* A `BibTeX` file with a book, an article ('incollection') inside that book and a web resource.

```
@incollection{benjamin:teaching,
	Crossref = {benjamin:street},
	Title = {TEACHING AIDS (1928)}}

@book{benjamin:street,
	Author = {Walter Benjamin},
	Booktitle = {Walter Benjamin},
	Publisher = {Penguin UK},
	Title = {One-Way Street and Other Writings},
	Year = {2009}}

@electronic{ziemann:formalia,
	Author = {Andreas Ziemann},
	Title = {Eine kleine Einf{\"u}hrung in wissenschaftliches Arbeiten},
	Url = {http://www.uni-weimar.de/medien/soziologie/lehre/Wissenschaftliches_Arbeiten.pdf},
	Volume = {3},
	Year = {2009}}
```

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

