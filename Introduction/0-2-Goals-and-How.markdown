# Goals


There are 3 primary goals:

## Publication *development*

Make the tools and workflows used in (open source) software development more accessible for authors and writers.

- **version control** 
- automation
- continuos integration
- IDEs
- libraries: reusable modules

- semantic content

## Cross-media publishing

- *problem*: one input, multiple outputs
- *solution*: semantic and structured content

Define every important element with a general syntax, allowing it to be exported to either print or web.

That requires a careful weighing of options and features. The syntax has to be powerful enough to serve power-users, but needs to be friendly enough to not intimate newcomers.

## Long-term reproducibility

Make sure that once written, the source of the publication can be compiled into the desired output 'forever', or at least as long as computers exist.

* open standard for publication 'packages'
* long-term availabilty of the build toolchain through use of open source software 


From these, we derive our secondary goals:

## Plain text

If a document is to be written in a binary container (like a Microsoft Word File), the uses of a software-like development process are very limited.

## Online & offline

The framework should be usable on a [*general purpose computer*](https://en.wikipedia.org/wiki/Turing_machine) without requiring an internet connection.

At the same time, it should be possible to use it 
with just a web browser, because less and less computing devices that people use are in fact general purpose.


## Free/Libre/Open Source

Using 'Open Source' software can be a goal in itself. Usually, this is a matter of personal or political opinion. 

However, considering the already listed goals, the problems that arise from them and the existing approaches to solve them, we can safely conclude that there is no alternative to use 'Open Source' software, at least for the framework itself.[^fn-usersoft]

[^fn-usersoft]: The users operating system, text editor, etc. can of course be proprietary or 'Open Source'.
It does not make any difference as long as all the needed software can be installed easily – that for example rules out Apple's closed `iOS` system as well as the 'open' Android (for now).

<!-- 
!["Open Source All The Things" *([internet meme][flossmeme])*](../_stash/open-source-all-the-things.jpg)

[flossmeme]: http://thinkahol.wordpress.com/2012/04/05/open-source-all-the-things-free-energy-and-free-information-for-a-free-people/ 
-->


# Implementation

The implementation of the goals happens in the form of real-world prototypes. 
This means a minimal working solution is developed while actual publication is produced with it.


## Prototypes

### Version 0: phd.nts.is

The first prototype was written alongside Naomi T. Salmons PhD Dissertation 
"Als ich Künstler war".

Using the tools that were already available (`Markdown`, `pandoc`, `git`), 
everything from automation to templates was written *('scripted')* for this specific publication. 
I also guided the usage of version control for collaborating with (proof-reading) editors. 
Furthermore, my role as a technical administrator provided valuable insight and inspiration for the next steps of the development process.

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