## Assets

- all assets need to be inside the project!
- project assets: bib etc
- document assets: images (figures)

### Images

- needs relative paths from the document!
- Pixel: png for web and print
- Vector: svg for web, pdf for print
- Leave extension, and it will be svg/pdf depending on web/print!


### Bibliography

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
