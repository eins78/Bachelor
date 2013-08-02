# Input

## Text editor

Choose a text editor *you* are comfortable with.
It should support plain text, but even Microsoft Word does this (reluctantly).

Generally, we can distinguish between two different kinds of text editors: 

a) the very minimalistic editors, with limited functionality, like the ones that ship 
with an operating system (like Windows' `Notepad.exe` or Apple's `TextEdit.app`).
b) IDEs, integrated developement environments
c) every step in between, of course

Recommendations: [`TextMate`][tm] (Mac, openSource), [`SublimeText`][st] (Mac, Windows, Linux; not openSource but friendly)

[tm]: http://macromates.com
[st]: http://www.sublimetext.com

## (**`pandoc`**'s) Markdown

The Markdown syntax aims to be easy to learn, type and read for humans.
Most of the text is simply plain text, but any kind of formatting is also entered as text, using various symbols. Many of them should seem familiar from the conventions used in plain text emails.

<!-- *Less is more:* 

*More is more:* there are several extension to the syntax supported by pandoc. -->

This following is based on 
John Grubers original "Markdown: Basics" [[-@url:gruber:mdbasic]] and
John MacFarlanes "Pandoc User’s Guide" [[-@url:pandoc:guide]].

Some things can be written in more than one way in Markdown. To be more concise, only a carefully chosen subset of the allowed syntax is described.


### Text Formatting

(microtypography)

These all work with words and phrases.

emphasis
:   To emphasize a phrase, put `*` *(star)* symbols directly around it

    `this *word* is important` \
    `=>` this *word* is important

strong emphasis
:   To strongly a phrase, put 2 `*` *(star)* symbols directly around it

    `this **word** is more important` \
    `=>` this **word** is more important

verbatim
:   To set a verbatim phrase, for example short example code or names of programms, put a `` ` `` *(backtick)* character directly around it (two of them if the enclosed text itself contains a backtick).

    ```less` is more`` \
    `=>` `less` is more

    Inside a verbatim phrase, **no other syntax is interpreted**! \
    This is especially important when something needs to be written 
    that also could be interpreted as Markdown, HTML or LaTeX:

    **Bad:** 
    
    ``My *product* name has stars around it.`` \
    ``In HTML, there is a <blink> tag.``
    
    `=>` My *product* name has stars around it. \
    In HTML, there is a tag.
    
    **Good:** 

    ``My `*`product`*` name has stars around it.`` \
    ``In `HTML`, there is a `<blink>` tag.``
    
    `=>` My `*`product`*` name has stars around it. \
    In `HTML`, there is a `<blink>` tag.


### Basic Text Formatting

These all work with words and phrases.

link (inline)
:   A link consists of two units: a **target** and an **anchor**, which is the phrase that 'links' to the target. The anchor is put into `[]` *(square bracket)* characters, followed directly by the target, enclosed in `()` *(parenthese)* characters, like this: `[anchor](target)`

    ```
    Some text [linking somewhere else](http://example.com).
    [Internal links](#Chapter) are also possible.
    
    ```
link (reference-style)
:   For a more readable source, the target can also be put seperately. 
    The anchor still needs to be put in square brackets and be repeated later, 
    followed by an `:` (colon) and the link.
    A different name can be given to an anchor
    by writing directly after it, also in square brackets:
    
    ```
    A sentence with [lots] of [links] would [become unreadable][ugly] quickly.
    
    [lots]: http://example.com
    [links]: http://example.com/link
    [ugly]: http://example.com/ugly
    ```

image
:   Images can be inserted anywhere in the text. The syntax for images is the same as links, just with a `!` *(exclamation mark)* character preceding the anchor. Also see: **figure**.

    - text inside the anchor is used as the image description
    - the target denotes the path to the image
    - images can have the following formats: 'JPG', 'GIF, 'PNG'
    - the description will only be visible if the image is a *figure*
    
    *Careful:* The image files need to be inside the project folder, see the section on [assets] for more information.

    ```
    Text with image ![Image Description](/path/to/image.jpg) inside.
    ```

    *or*

    ```
    Text with image ![Another Image][picture-id] inside.
    
    [picture-id]: /path/to/image.jpg
    ```


### Document Structure Elements

Also called 'block elements', because they form their own 'block' of content.
The have to be *preceded and followed by a blank line*, so they are set apart from the rest of the text. 
This also increases the clarity of the document source, especially because block elements can be nested (see *"nesting elements"*).

paragraph
:   A paragraph is any text, **followed by a blank line** (because it is a 'block element'). \
    All line breaks inside a paragraph are **ignored**!

    ```
    This is a paragraph.
    
    This is the next paragraph.
    ```
    
    How Markdown handles paragraphs and linebreaks might be the most alienating thing 
    about it. It takes some getting used to, but increases flexibility while writing because 
    linebreaks can be inserted to break long lines in the source, without effecting the output.
    
    ```
    This is all 
    just one 
    paragraph.
    
    This is the next paragraph.
    ```
    
    Conversely, this doesn't work for specific text, where line breaks are important. \
    To **force a line break**, end the line with a `\` *(backslash)* character. 
    *Example [poem]:*
    
    ```
    Roses are red, \
    Violets are blue, \
    Sugar is sweet, \
    And so are you.
    ```
    
    [poem]: https://en.wikipedia.org/wiki/Roses_are_red


heading
:   A heading is created by a line starting with one or more `#` *(hash)* characters. The number of hashes denotes the heading's **level**.

    ```
    # Top-Level Heading
    
    Some text.
    
    ## Second-Level Heading
    
    More text, where I write about hashtags. For example, 
    #OccupyWallStreet ist just text, NOT a heading (no blank line before).
    ``` 


unordered list
:   bullet-point lists are one or more lines starting with a `-` (minus) character

    Simple:
    
    ```
    A list:

    - lists
    - some
    - things
    ```
    
    With sub-elements (see *'nesting elements'*)
    
    ```
    A nested list:

    - first item
    - this item
        - has subitems
        - which are intended
        - with 4 spaces
    - last item
    ```


ordered list
:   numbered lists are one or more lines starting with a `number` and a `.` (period) character

    ```
    A numbered list:

    1. lists
    2. some
    3. things
    ```


figure:
:   A line of text with only an *image* (see above) is interpreted as a 'figure'. 
    This means it will be a separate, centered, document element.
    More importantly, the image description is used as the 'caption'.
    In print, they will also be numbered chronologically throughout the document.

    ```
    ![Figure caption](/path/to/image.jpg)
    ```

    *Trick:* To insert a seperate picture without turning it into a figure, 
    for example when including a logo, insert a 'invisible whitespace' before it, like this:

    ```
    \ ![This is not a figure](/path/to/image.jpg)
    ```


blockquote
:   For larger citations, start each line with a `>` *(greater-then)* character, just like in an email:

    ```
    One of my favorite quotes:
    
    > "Most quotes you find on the internet 
    > are wrongly attributed." — Oscar Wilde
    ```

code block
:   like the *'verbatim'* text formatting, but in a block. \
    There are two ways to achive this:

    1. Indent every line by 4 spaces: 

        ```
        Some `BASIC` code:

            10 PRINT "Hello World"
            20 GOTO 10

        More text.
        ```

    2. *or* put a "fence" of (at least) 3 backticks around it. 
       With this syntax, a language can optionally be specified (for syntax highlighting), 
       by writing it after the opening line of backticks: 
    
        ``````
        Some `JavaScript` code:

        ```js
        var form = function (content) {
          follow(content);
        };
        ```

        More text.
        ``````


nesting elements
:    block elements can contain other block elements

    - Addional elements in the list are indented by 4 spaces

    ```
    A nested list:

    - A paragraph in a list.
    
        Another paragraph belonging to the first item.
    
    - Another paragraph.
    
        - The second list item
        - contains itself
        - another list
    
    - Last paragraph.
    ```

### Attributes

Attributes (metadata) can be added to heading and code block elements.
These are usefull when costumizing the project, especially when working with the `HTML` output. 
In the simplest form, they can be used to style these elements visually, 
but the possibilities are endless.

Attributes are written inside `{}` *(curly braces)* at the end of the elements' first line.

ID
:   give the element an identifier

    ```
    # Heading {#myid}
    ```
    
    results in the following `HTML`:
    
    ```
    # Heading {#myid}
    ```
    
# Heading {#myid}

class
:   give the element a class

    ```
    # Heading {#id}
    ```

general attribute
:   give the element a general attribute

    ```
    # Heading {#id}
    ```


## Citations and Bibliography

- everybody needs to quote stuff
- with papermill, like with `LaTeX`, you keep a 'database' of all the items you quote or otherwise reference.
- each item in db has id
- you then use a link-like syntax, with the id, like so: `See [@id, pp. 23-42]`


### Database

- bibtex
- json
- config: either
    - just 1 .bib files
    - { "bibliography": "foo.bib" }


### Citation Style

- is a matter of taste and style
- but also differs by institution

- [csl files](http://citationstyles.org)
- [download](http://zotero.org/styles) the one which suits your context most
- general distinction: numeric, author-date
- if unsure, stick to the standards
      * numeric
        * [IEEEE](http://zotero.org/styles/ieee-with-url)
        * [DIN 1505-2](http://zotero.org/styles/din-1505-2-numeric)
      * author/date
        * [DIN 1505-2](http://zotero.org/styles/din-1505-2)
        * [Harvard](http://zotero.org/styles/harvard1) ([German](http://zotero.org/styles/harvard7de))
