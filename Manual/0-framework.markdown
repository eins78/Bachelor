% Papermill: **Manual**
% Max F. Albrecht
% Bachelor Thesis, \
  Bauhaus-Universität Weimar, \
  2013



# The (anti-)framework

![`papermill` 'software stack' in comparison](../_images/papermill-stack-1)

`papermill` aims to be a modular, decoupled framework.

In software, a ['framework'](https://en.wikipedia.org/wiki/Software_framework) is an abstraction which solves a general problem in a reusable way. 

'Modular' means that the framework itself consist of already-existing
components, along with additional 'glue' software to better integrate them.

Being 'decoupled' means that the framework should still be useful if
a user uses only some of it's components.


# Cross-media publishing

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
    

# Walkthrough

The following part of the *MANUAL* should explain all the steps necessary to produce 
a publication with `papermill`.

It covers the following steps:

-  **SETUP**: start your project

    * manual or from template ("stationary")
    * get to know the project (folder) structure  


-  **INPUT**: write content

    * text: markdown / pandoc
    * assets: images, figures, bibliography, data???


-  **GIT**: version your content

    * saving: commit & push
    * helping: fork & clone
    * collaboration: pull & merge


-  **OUTPUT**: output your content

    * web -> `HTML`
    * print -> `LaTeX`

