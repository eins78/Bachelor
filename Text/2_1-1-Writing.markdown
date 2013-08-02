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


## (**`pandoc`**'s) Markdown

The Markdown syntax aims to be easy to learn, type and read for humans.
Most of the text is simply plain text, but any kind of formatting is also entered as text, using various symbols. Many of them should seem familiar from the conventions used in plain text emails.

<!-- *Less is more:* Some things can be written in more than one way in Markdown. To be more concise, the following section only describes a carefully chosen subset of the allowed syntax.

*More is more:* there are several extension to the syntax supported by pandoc. -->

### Basic Formatting

(microtypography)

These all work with words and phrases.

emphasis
:   to emphasize something, put `*` *(star)* symbols directly around it

    `this *word* is important` \
    `=>` this *word* is important

strong emphasis
:   to strongly something, put 2 `*` *(star)* symbols directly around it

    `this **word** is more important` \
    `=>` this **word** is more important

fixed-width
:   to set something in fixed-with, for example names of programms, put a `` ` `` *(backtick)* character directly around it, two of them if the enclosed text itself contains a backtick.

    ```less` is more`` \
    `=>` `less` is more



### Structural Elements

(macrotypography)

All structural elements have to be *preceded and followed by a blank line*, so they are set apart from the rest apart. This also increases the clarity of the document source.

heading
:   A heading is created by a line starting with one or more `#` *(hash)* characters. The number of hashes denotes the heading's **level**.

    ```
    # Top-Level Heading
    
    Some text.
    
    ## Second-Level Heading
    
    More text.
    ``` 


unordered list
:   bullet-point lists are one or more lines starting with a `-` (minus) character

    ```
    A list:
    
    - lists
    - some
    - things
    ```


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
