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
of the framework are all tried and proven, there are already diverse tools
that support these modules.

However, the ability to 'mix and match' the tools according to personal
taste and requirements 


![Tools used to produce this publication](../_stash/Screen%20Shot%202013-08-06%20at%2015.11.34.png)



### Text editor

As we already have established, we don't want to use a word processor because we are working with plain text.

Generally, we can distinguish between different kinds of text editors: 

a) the very minimalistic editors, with limited functionality, like the ones that ship 
with an operating system (like Windows' `Notepad.exe` or Apple's `TextEdit.app`).
b) **`IDE`**s, integrated development environments

Of course, there also exists every gradation in between those two. 
There are some editors from the 
hat means they 'understand' the basic syntax of the formatting language, which enables them to offer features 
known from programming languages:

- *Syntax highlighting:* Making the plain text source more **readable** by using colors, font sizes to visualize the relation of syntax and text. Also helps to **spot errors** in the syntax more quickly (and, after getting used to it, almost intuitively)

- *Shortcuts:* Offer quicker way to type the syntax. Although with Markdown the syntax is as minimal as possible, it still helps to 

Like other text editors that have support

Recommendations: 

- [`TextMate`][tm] (Mac, 'open source')
- [`SublimeText`][st] (Mac, Windows, Linux; not 'open source' but friendly)

[tm]: http://macromates.com
[st]: http://www.sublimetext.com

These both have the ability to be extended with 'bundles', and already ship with a 'Markdown bundle' built-in.


## Communication


### README

The most easy way and fool-proof to communicate inside a project is, 
like the content itself, text-based.

A straightforward solution, which is often used in software, is the README file. It is a text file in which general information *about* the project is collected. 
The main advantage of this is that, when using version control, this file will always be stored and versioned together with the contents.
