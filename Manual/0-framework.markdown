% Papermill: **Manual**
% Max F. Albrecht
% Bachelor Thesis, \
  Bauhaus-Universität Weimar, \
  2013


# The (anti-)framework

![`papermill` 'software stack' in comparison](../_images/papermill-stack-1)

`papermill` aims to be a modular, decoupled framework.

In software, a ['framework'](https://en.wikipedia.org/wiki/Software_framework) is an abstraction which solves a general problem in a reusable way. 

A 'modular' framework consists itself of
components which are also useful by themselves (and could already be existing), along with additional 'glue' software to better integrate them.

Being 'decoupled' means that the framework should still be useful if
a user uses only some of its components, and that it should be relatively easy to 
change them for different ones.

For example, someone already writing in **`TeX`** does not have to use the 
Markdown syntax and still take advantage of the configuration and automation, 
although e.g. the web output might not work as expected.


## A quick Walkthrough

The following part of the *MANUAL* should explain all the steps necessary to produce 
a publication with `papermill`.

It covers the following steps:

-  **SETUP**: start your project

    * manual or from template ("stationary")
    * get to know the project (folder) structure  

-  **INPUT**: write content

    * text: markdown / pandoc
    * assets: images, figures, bibliography

-  **OUTPUT**: output your content

    * web -> `HTML`
    * print -> `LaTeX`

