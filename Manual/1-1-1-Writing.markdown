# Writing

## Text editor

Choose a text editor *you* are comfortable with.
It should support plain text, but even Microsoft Word does this (reluctantly).

Generally, we can distinguish between two different kinds of text editors: 

a) the very minimalistic editors, with limited functionality, like the ones that ship 
with an operating system (like Windows' `Notepad.exe` or Apple's `TextEdit.app`).
b) IDEs, integrated development environments
c) every step in between, of course

Recommendations: 

- [`TextMate`][tm] (Mac, openSource)
- [`SublimeText`][st] (Mac, Windows, Linux; not open source but friendly)

[tm]: http://macromates.com
[st]: http://www.sublimetext.com


## Document Structure

A very generic structure. Not all publications use all of the elements.

- Titleblock/-page
    * Title
    * Author
    * Date

- Front Matter
    * Table of Contents
    * Abstract
    * etc.

- **Document Content**
    * Chapters
        * Sections, Subsections
            * Text

- Appendix
    * Bibliography
    * List of images/figures
    * Colophon
    * Affidavit
    * etc.


Sources: [ziemann](http://www.uni-weimar.de/medien/soziologie/lehre/Wissenschaftliches_Arbeiten.pdf), 
[wikibooks: latex](http://en.wikibooks.org/wiki/LaTeX/Document_Structure#Top_matter)



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
