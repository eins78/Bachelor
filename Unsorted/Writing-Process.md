# The Process of Writing



## People

**author**(s)

:   The author is, obviously, the most important person of any publication. \
    It is the person or people responsible or creating the content.
    If there are several co-authors, a strategy for managing them has to be devised.


**editor**

:   An editor does not create content, but does contribute editorial changes, correcting errors, etc.


## Phases

**Draft**

:   The earliest stage of any document. The content is still evolving.


**Edit**

:   The content is mostly finished. Proofreading and other content-polishing occurs.


**Publish**

:   The content is final. Now, the output is checked for errors.


**Update** 

:   Sometimes, there are updates to a document, be it for correcting errors or incorporating new information. That means that the *Edit* and *Publish*, with the added requirement that a record of the new changes has to be kept (usually called "Errata")


## Tools

An *integrated* development environment (**`IDE`**) for `papermill` 
is a long-term goal of the project, but because the important modules
of the framework are all tried and proven, there are many diverse tools
that support these modules.

However, the ability to 'mix and match' the tools according to personal
taste and requirements 


![Tools used to produce this publication](../_stash/Screen%20Shot%202013-08-06%20at%2015.11.34.png)



### Text editor

Choose a text editor *you* are comfortable with.
It should support plain text, but even Microsoft Word does this (reluctantly).

Generally, we can distinguish between two different kinds of text editors: 

a) the very minimalistic editors, with limited functionality, like the ones that ship 
with an operating system (like Windows' `Notepad.exe` or Apple's `TextEdit.app`).
b) IDEs, integrated development environments
c) every step in between, of course

Recommendations: 

- [`TextMate`][tm] (Mac, 'open source')
- [`SublimeText`][st] (Mac, Windows, Linux; not 'open source' but friendly)

[tm]: http://macromates.com
[st]: http://www.sublimetext.com


## Communication


### README

The most easy way and fool-proof to communicate inside a project is, 
like the content itself, text-based.

A straightforward solution, which is often used in software, is the README file. It is a text file in which general information *about* the project is collected. 
The main advantage of this is that, when using version control, this file will always be stored and versioned together with the contents.
