# Output



## Print

The 'print' output produces a PDF file suitable for printing, using (`XeLa`)**`TeX`**.

### **`LaTeX`**'s document classes

These are the 3 most common document classes: 

- Article
- Report
- Book

An **article** is the most condensed output template. There is just a title block, followed by the content (including the optional table of contents).

The **report** is the default class in `papermill`. It leaves more whitespace, reserving at least one full page for the title block, the table of contents, and part/chapter blocks each. 
Output from this class is also suitable for reading on a screen, in case the 'web' version is not an option.

The **book** class is like the report, but optimized for two-folded binding. It also repeats the name of the current chapter on the top of each page to help the reader navigate large documents.


### Styling

The following ways to style your print output are supported. 
These are also the settings used for this publication.

```
"print": {
  "class": "book",
  "geometry": "a4paper, centering, bindingoffset=15mm",
  "mainfont": "Source Sans Pro",
  "monofont": "Source Code Pro",
  "fontsize": "11pt"
}
```

The available options for the 'geometry' setting can be found in the corresponding [package documentation](http://www.ctan.org/pkg/geometry). The most useful ones include: 

- paper sizes: `a4paper` or `a5paper`
- margins: `centering` or `marginratio=1:1` or `margin=2cm` or `top=2cm, left=2.5cm, right=3cm`


### Print-Only "Tricks"

As we have learned in the chapter "[Input][]", we strive to produce a document source which is as output-agnostic as possible, in the hopes
that if it works for print and web today, it should be easy to adapt
to the to-be-invented media of the future.

However, we also need to publish

### layout

- `\pagebreak`

## Web

**`HTML`** + `bookstrap`

## bookstrap

- build for modern web
- web standards
- backwards compatibility
  - mobile first, inherited from the parent framework bootstrap
- less-css
    - small components



## Publishing

### Web

- it is just HTML, go upload it onto some host

- self-contained: assets go inside
    - good for outside of web: email, downloads, mobile devices, usb sticks etc
    - can be turned off if it is just for web (caching!)  
      `{ "selfContained": false }`
  
- PDF is also an option, but the default PDF settings in `papermill` are optimized for print, for example links are moved to footnotes.


### Print


The **font** used in LaTeX templated is [Computer Modern], also available in TTF format. Useful in cases where additional elements need to be designed and the same font is desired. Example: Title page for a letterpressed cover


