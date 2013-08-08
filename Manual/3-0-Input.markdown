# Input


## Document Structure

A very generic structure. Not all publications use all of the elements.

- Titleblock/-page
    * Title
    * Author
    * Date

- Front Matter
    * Table of Contents
    * Imprint
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
    * Acknowledgments
    * Affidavit


The most important of those can already be expressed with syntax, for example the titleblock (for which the supplied meta-data is used). 
Headings of different levels divide the document into chapters, sections etc; 
and a 'Table of Contents' is generated automatically from this organization.

Similarly, if citations are marked correctly, a list of references is inserted at the end of the document.

<!-- The rest of the front matter can to date

a) either be created using **`TeX`**
b) by starting the document with a second-level heading before any top-level heading ('Chapter 0') -->

*Sources and further reading: [@ziemann:formalia, p. 13], [[@wikib:tex:struct]]*
