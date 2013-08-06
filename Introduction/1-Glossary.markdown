
# Glossary

## `HTML`

The formatting language of the web, [invented by Tim Berners-Lee at the `CERN` in 1989](http://www.w3.org/History/1989/proposal.html).

Allows the author to write a plain text and 'mark it up' using [`<tags>`](http://www.w3.org/History/19921103-hypertext/hypertext/WWW/MarkUp/Tags.html). 
By enclosing content into them, distinct elements of a document can be created, like headings, paragraphs, images, links, and so on.
  
Made specifically to be used with `HTTP` (the `HyperText Transfer Protocoll`), which explains the meaning of the acronym: `HyperText Markup Language`.

Today, these two standards serves as the foundation of the web, along with `CSS` (for styling) and JavaScript (for interactive and programmatic elements).

  ***Example:** 
  a Document with a top-level heading with the text "Hello", followed by a paragraph with the text "World!"*

```html
<html>
<body>
  <h1>Hello</h1>
  <p>World!</p>
</body>
</html>
```


## `(La)Tex`

- invented by Donald Knuth
- wrote Book: "The Art of computer programming"
- unhappy with the state of typesetting software
- also unhappy with alternative: writing with computer, setting manually by hand
- invents `Metafont` system, `TeX`

## `git`

`Git` is a distributed version/revision control system system dubbed as "the stupid content tracker" [@link:git:readme, line. 3] developed by [Linus Thorvalds](https://en.wikipedia.org/wiki/Linus_Torvalds), more commonly known for his inception of this `Linux` kernel.
Just like Donald Knuth and his `TeX` project, Linus became so frustrated with the lack of (by his standards) good software to solve his problem, so he put of work on linux until git was usable.

For a step-by-step introduction to Versioning and git, see the chapter *Versioning*.


## `pandoc`

Test: see [`diff`](#diff)

## `diff`, (`patch`) {#diff}

- diff, the *(noun)*
- diff, to *(verb)*

> "The verb "diff" is computer jargon, but it's the only word with exactly the sense I want. […]"
> 
> "**diff:** An unselective and microscopically thorough comparison between two versions of something.
>  From the *Unix* diff utility, which compares *files*." — @graham:hackers [pp. 224, 244]

A **diff**, in general, is a text file which stores the differences between two files, in a standard format. This format can be read by humans, but more importantly it can be evaluated by a computer. 

This means that with just the original file and the **diff** of that file and a different version, a piece of software can produce the other version only be *applying* the **diff** to the original file.[^fn-diff] 
This process is also called *"patching"*, which is why a **diff** might sometimes be referred to as a **patch**.

As seen in the example, a **"diff"** only compares a file *line by line*.

  ***Example:***
  a small text file, another version of it, and the `diff`

1.   **text1.txt**:

        THIS IS A TEXT.  
        I MADE IT.

2.   **text2.txt**:

        THIS IS A TEXT.  
        I WROTE IT.

3.   **output** of "`git diff text1.txt text2.txt`":

        --- a/text1.txt
        +++ b/text2.txt
        @@ -1,2 +1,2 @@
         THIS IS A TEXT.  
        -I MADE IT.
        +I WROTE IT.


[^fn-diff]: On a [*nix][] operating system, this program is itself called `diff` (from "difference") and gave name to the concept. 

## Hidden file, -folder

Certain files or folder on a computer, 
for example configuration files belonging to software, 
can be hidden from the user by the operating system and/or file browser.
This is usually to keep the user from indadvertedly modifying or deleting them, because "seeing" them usually requires some kind of setting, command line flag or other kind of "trick".
On operating systems in the `UNIX` family, which includes `Linux` and `Mac OS X`, there is a historically grown convention that files and folder starting with a dot (`.`) character are hidden.


## wiki

- many single documents
- hypertext: links
- suitable for collaborative information gathering (wikipedia)
