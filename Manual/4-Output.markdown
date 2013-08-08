# Output



## Print

The 'print' output produces a PDF file suitable for printing, using (`XeLa`)**`TeX`**.


### Styling

Apart from the class, the following ways to style your print output are supported. 
These are also the settings used for this publication: 

```
"print": {
  "class": "book",
  "mainfont": "Source Sans Pro",
  "monofont": "Source Code Pro",
  "fontsize": "11pt"
  "geometry": "a4paper, centering, bindingoffset=15mm",
}
```

#### Document classes

These are the 3 most common document classes used in **`(La)TeX`**: 

- Article
- Report
- Book

An **article** is the most condensed output template. There is just a title block, followed by the content (including the optional table of contents).

The **report** is the default class in `papermill`. It leaves more whitespace, reserving at least one full page for the title block, the table of contents, and part/chapter blocks each. 
Output from this class is also suitable for reading on a screen, in case the 'web' version is not an option.

The **book** class is like the report, but optimized for two-folded binding. It also repeats the name of the current chapter on the top of each page to help the reader navigate large documents.

#### Font

Using the **'\*font'** properties, you can select the exact name of any `TTF` or [`OpenType`](https://en.wikipedia.org/wiki/Opentype) font 
installed on your computer.

- `mainfont`: main body text
- `monofont`: verbatim formatting, code blocks
- `mathfont`: Math (formulas, symbols)

The **'fontsize'** can be either 10pt, 11pt or 12pt.

#### Geometry

The available options for the **'geometry'** setting can be found in the corresponding [package documentation](http://www.ctan.org/pkg/geometry). They can be used together if the are separated 
by a colon and a space, as in the example above. The most useful ones include: 

- Paper sizes: `a4paper` *or* `a5paper` *or* `total={22.6cm, 32cm}`
- Margins: `centering` *or* `marginratio=1:1` *or* `margin=2cm` or `top=2cm, left=2.5cm, right=3cm`


### Layout Adjustments

The **`TeX`** systems are extremely powerful typesetting engines, 
but nevertheless limited by the fact that they are software.

While the engine is aware of common typographical errors, 
in absence of a human it has to rely on an internal system 
based on 'penalty points' for the decision making, thus 
can not always be *right*.

The position of page breaks and other layout/whitespace problems 
are among the most common issues. They can be solved quite easily 
by taking advantage of the fact that plain **`(La)TeX`** commands 
are allowed in the document source. 

These commands only affect the print output, so while it does make the 
source less media-agnostic, it does not cause any further problems.

#### Page break

To force a pagebreak anywhere in the printed document, 
enter the following two lines:

```
\vfill
\pagebreak
```

The `\pagebreak`command's function seems self-evident, but it does not 
have the same effect as one would expected from a word processor: 
A page break *is* inserted, but the content on the page right before it 
will be 'stretched' across the page via a (sometimes very) increased 
line-height. 

Conveniently, the `\vfill` command right before it 'fills' the vertical space before 
the `\pagebreak`, so that the two commands together work as expected.


## Extras

### Additional Designs

The **font** used in the default **`(La)TeX`** template is called [Computer Modern](https://en.wikipedia.org/wiki/Computer_Modern), also available in TTF format. Useful in cases where additional elements need to be designed and the same font is desired. (Example: Title page for a letter-pressed cover)




## Web

Output for the 'web' is produced in **`HTML`** format, 
styled with the `bookstrap` template.


## bookstrap

Source code and further information: \ `http://github.com/papermill/bookstrap`

- Based on ['Bootstrap 3'](http://getbootstrap.com)
- Build modern web browsers
- Adheres to web standards
- uses [`less` css](http://lesscss.org)
    - small components
    - configurable
    - extendable
- Focus on readability
- Grid based on typographical em-units — adheres to line length regardless of zooming


## Publishing

### Web

- it is just HTML, go upload it onto some host

- self-contained: assets go inside
    - good for outside of web: email, downloads, mobile devices, USB sticks etc
    - can be turned off if it is just for web (caching!)  
      `{ "selfContained": false }`
  
- PDF is also an option, but the default PDF settings in `papermill` are optimized for print, for example links are moved to footnotes.


