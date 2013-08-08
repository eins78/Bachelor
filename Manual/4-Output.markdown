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
- Binding offset: `bindingoffset=15mm`

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


## Styling

Naturally, styling the web output is possible by using `CSS`.
The generated markup has a semantic structure and allows easy styling.

Additional attributes can be also added to elements in order to style them, see 'Attributes' in the *Markdown* section.

Finally, the generated markup can also be customized with [templates](http://github.com/papermill/pandoc-templates).

If `CSS` is new to you, use Mozilla's documentation as a starting point: \
`https://developer.mozilla.org/CSS`


## Publishing


The resulting HTML can be uploaded to any web host, 
but is optimized to be shared via any other digital medium: 

**All 'assets' (images, styles, fonts, etc) will be 'embedded' into the** **`HTML`** **file.**

This means that it can be sent via USB drives, email, uploaded to a blog, content management system or file sharing service without 'breaking' them because of missing assets. 
Otherwise, some files may not be copied along, or may not available due to the nature of the medium.


This can be turned off in the configuration by setting `"selfContained": false` and should be done if publishing to a regular web server is planned, where links to the assets are known to work. Especially if fonts, styles or images are shared between multiple documents published to the same web host, the `selfContained` feature would cause needless re-downloading of files that could otherwise be in the browser's cache.


Lastly, publishing a **`PDF`** file to the web is also an option, but it should be noted that the default settings in `papermill` are optimized for print purposes. 
For example, links are represented as footnotes and there are no colors present other than black (except in images or syntax-highlighted code). 
This be adjusted in the project configuration if desired.


