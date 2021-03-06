## Implementation


<!-- 
    TODO: directly refer to the goals!
 -->


Implementation of the goals happens in the form of real-world prototypes. 
This means a minimal working solution is developed while actual publication is produced along with it.


<!-- ## Prototypes -->

### Version 0: phd.nts.is

The first prototype was written alongside Naomi T. Salmons PhD Dissertation 
"Als ich Künstler war".

Using the tools that were already available (*Markdown*, `pandoc`, `git`), 
everything from automation to templates was written *('scripted')* for this specific publication. 
I also guided the usage of version control for collaborating with (proof-reading) editors. 
Furthermore, my role as a technical administrator provided valuable insight and inspiration for the next steps of the development process.

The dissertation can be downloaded in web and print format 
at the [project website](http://phd.nts.is), 
while the source code (including the aforementioned prototype) 
is [published on *GitHub*](http://github.com/NTS/PhD).


### Version 1: This document

This document, my Bachelor thesis, was written alongside the development of several more prototypes.

The goal was to find generally useful solutions to the technical problems that are common to most publication projects.

- *Project Configuration* specification
    * define meta-data, Inputs, Outputs
    
- *Stationery*: publication templates

- `mill` *Command Line Utility*
    * compiles `papermill` projects
    * inside: `node.js` module, usable locally and server-side

- `bookstrap`: template and style for web output to complement the LaTeX templates
    * optimized for modern web browsers
    * designed for long-form text: readability, non-distracting, table/sidebar of contents
    * uses novel grid system based on typographic `em`-units
    
- *Bonus:* `Papermill.app`, a graphical 'drag-and-drop' interface to compile `papermill` projects on *Mac OS X*

