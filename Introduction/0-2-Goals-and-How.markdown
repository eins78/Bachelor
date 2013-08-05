# Goals

- make the tools and workflows used in (open source) software developement more accessible for authors and writers
    - version control 
    - automation

- formalizing and documenting configuration and process

- semantic content

- cross-media publishing
    * 1 input, many outputs

- reproducibility 
    * open standard for publication 'packages'
    * long-term availabilty of the build toolchain through use of open source software 


## Cross-media publishing

- one of the main goals of this project

- *problem*: one input, multiple outputs
- *solution*: a general syntax (markdown) and converter (pandoc)

- *but*: md was made for web
- *solution*: pandoc enhanced syntax
    - covers the most important missing elements
      - citations/bibliography
      - tables
      - definition lists
    - is very flexible
    - but: 
    - but: danger of 'implementation leakage'


goal: to define every important element with a general syntax, allowing it to be exported to either print or web.
That means a careful weighing of options and features. The syntax has to be powerful enough to serve power-users, but needs to be friendly enough to not intimate newcomers.


# Implementation

The implementation of the goals happens in the form of real-world prototypes. 
This means a minimal working solution is developed while producing an actual publication.

## Prototypes

### Version 0: phd.nts.is

The first prototype was written alongside Naomi T. Salmons PhD Dissertation 
"Als ich Künstler war".

Using the tools that were already available (`Markdown`, `pandoc`, `git`), 
everything from automation to templates was written *('scripted')* for this specific publication. I also guided the process of collaborating via version control. Furthermore, my role as a technical administrator provided valuable insight and inspiration for the next steps of the development process.

The finished Dissertation, in web and print format, can be downloaded at 
the [project website](http://phd.nts.is), 
while the source code (including the aforementioned prototype) is [published on GitHub](http://github.com/NTS/PhD).

### Version 1: This document

This document, my Bachelor thesis, was written alongside the development of several more prototypes.

The goal was to find generally useful solutions to the technical problems that are common to most publication projects.

- Project Configuration specification
    * Metadata
    * Inputs
    * Outputs

- `mill` Command Line Utility
    * compiles papermill projects
    * inside: `node.js` module, usable locally and server-side

- `bookstrap`: template and style for web output to complement the LaTeX templates
    * optimized for modern web browsers
    * designed for long-form text: readability, non-distractive, table/sidebar of contents
    * uses novel grid system based on typographic `em`-units.