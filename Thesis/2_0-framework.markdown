# Manual

## The (anti-)framework    {#manual}

Papermill is a modular, decooupled framework.

"Modular" means many parts working together.

decoupled means the you can choose from the parts
and they will also wrk if some are missing (dependencies)

some things are coupled, though, to make it easier
that means the actual content format
as well as the metadata.

the metadata are also build instructions. they define how to output
the content, in an open format.
this has several implications:
- more future proof
- can be supported by multiple tool, services, projects, …


## Cross-media publishing

- one of the main goals of this project

- *problem*: one input, multiple outputs
- *solution*: a general syntax (markdown) and converter (pandoc)

- *but*: md was made for web
- *solution*: pandoc enhanced syntax
    - covers the most important missing elements
      - citations/bibliography
      - tables
      - defintion lists
    - is very flexible
    - but: 
    - but: danger of 'implementation leakage'


goal: to define every important element with a general syntax, allowing it to be exported to either print or web.
That means a carefull weighing of options and features. The syntax has to be powerful enough to serve power-users, but needs to be friendly enough to not intimate newcomers.
    

## Walkthrough

The following part of the *MANUAL* should explain all the steps neccessary to procuce 
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
    * collabo: pull & merge


-  **OUTPUT**: output your content

    * web -> `HTML`
    * print -> `LaTeX`