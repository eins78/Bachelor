# Goals

- make the tools and workflows used in (open source) software developement more accessible for authors and writers
    - version control 
    - automation

- formalizing and documenting configuration and process

- cross-media publishing
    * 1 input, many outputs

- reproducibility 
    * open standard for publication 'packages'
    * long-term availabilty of the build toolchain through use of open source software 



# Implementation

The implementation of the goals happens in the form of real-world prototypes. 
This means a minimal working solution is developed while producing an actual publication.

## Prototypes

### Version 0: phd.nts.is

The first prototype was written alongside Naomi T. Salmons PhD Dissertation 
"Als ich Künstler war".

Using the tools that were already available (`Markdown`, `pandoc`, `git`), 
everything from automation to templates was written *('scripted')* for this specific publication. I also guided the process of collaborating via version control. Furthermore, my role as a technical administrator provided valuable insight for the next steps of the developement process.

The finished Dissertation, in web and print format, can be downloaded at 
the [project website](http://phd.nts.is), 
while the source code (including the aforemntioned prototype) is [published on github](http://github.com/NTS/PhD).

### Version 1: This document

This document, my Bachelor thesis, was written alongside the developement of several more prototypes.

Technically, the goal was to find generally useful solution to the problems that are common to most publication projects.

- Project Configuration specification
    * Metadata
    * Inputs
    * Outputs

- `mill` Command Line Utility
    * compiles papermill projects
    * inside: `node.js` module, usable locally and server-side

- `bookstrap`: template and style for web output to complement the LaTeX templates
    * optimized for modern web browsers
    * designed for long-form text: readabiblity, non-distractive, toc-sidebar
    * uses novel grid system based on typographic `em`-units.