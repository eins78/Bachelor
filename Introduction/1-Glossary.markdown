# Glossary

## `Unix`, `Linux`, `*nix`

Unix is:

a) an [operating system][os] family with a [history] back to the year 1969 .

    `Linux` is a well-known member of this diverse family, 
    so `*nix` is sometimes used as a more general term.
    
    Most of the internet runs on some kind of `*nix`, 
    in fact today most computers that don't bear a *Windows* 
    sticker probably run a variation of it, including *Apple*'s 
    and *Google*'s computers, smartphones and tablets.

[os]: https://en.wikipedia.org/wiki/Operating_system
[history]: https://en.wikipedia.org/wiki/Unix

b) a [philosophy](https://en.wikipedia.org/wiki/Unix_philosophy)

    - **everything is a *(text)* file!**
    - Simplicity and modularity


## `HTML`

The formatting language of the web.
[Invented by Tim Berners-Lee at the `CERN` in 1989](http://www.w3.org/History/1989/proposal.html), 
it allows authors to write a plain text and 'mark it up' using [`<tags>`](http://www.w3.org/History/19921103-hypertext/hypertext/WWW/MarkUp/Tags.html). 
By enclosing content to them, distinct *elements* of a document can be created, like headings, paragraphs, images, links, and so on.
  
Made specifically to be used with `HTTP` (the **`H`**`yper` **`T`**`ext ` **`T`**`ransfer` **`P`**`rotocoll`), which explains the meaning of the acronym: **`H`**`yper` **`T`**`ext` **`M`**`arkup` **`L`**`anguage`.

Today, these two standards serve as the foundation of the web, along with `CSS` (for styling) and JavaScript (for interactive and programmatic elements).

***Example:** 
A document with a top-level heading with the text "Hello", followed by a paragraph with the text "World!"*

```
<html>
<body>
  <h1>Hello</h1>
  <p>World!</p>
</body>
</html>
```


## `TeX`, `LaTeX`, `*TeX` {#tex}

- invented by Donald Knuth
- wrote Book: "The Art of computer programming"
- unhappy with the state of typesetting software
- also unhappy with alternative: writing with computer, setting manually by hand
- invents `Metafont` system, `TeX`


## `git`

`Git` is a distributed version/revision control system dubbed as "the stupid content tracker" [-@link:git:readme, line. 3] and developed by [Linus Thorvalds](https://en.wikipedia.org/wiki/Linus_Torvalds), more commonly known for his inception of this `Linux` kernel.
Just like Donald Knuth and his `TeX` project, Linus became so frustrated with the lack of (by his standards) good software to solve his problem, 
that he put of work on Linux until git was usable.

For a step-by-step introduction to Version Control and git, see the chapter *[Versioning]*.



## `diff`, (`patch`) {#diff}

- diff, the *(noun)*
- diff, to *(verb)*

> "The verb "diff" is computer jargon, but it's the only word with exactly the sense I want. [`…`]"
> 
> "**diff:** An unselective and microscopically thorough comparison between two versions of something.
>  From the *Unix* diff utility, which compares *files*." — [@graham:hackers pp. 224, 244]

A **diff**, in general, is a file which stores the differences between two files in a text format. This format can be read by humans, but more importantly it can be evaluated by a computer. 

If there is an original file **A** and a different version of the same file **B**, a piece of software can produce **B** only by *applying* the **diff** between **A** and **B** to the file **A**.[^fn-diff] 
This process can also be called *"patching"*, which is why a **diff** is sometimes be referred to as a **patch**. 

As seen in the example, a **"diff"** only compares a file *line by line*.


***Example:*** 
A small text file, another version of it, and the `diff`

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


[^fn-diff]: On a `*nix` operating system, this program is itself called `diff` (from "difference") and gave name to the concept.


## `hash`

A **hash** is a concept from the area of cryptography. 

A simplistic explanation would be to think of it as a 
'cross sum' of some content, 
which (mathematically) can only be calculated with access to the exact content (and not by guessing, for example).[^fn-hash] 

A 'hash function' used in `git` (and many other software programs) is called [`SHA1`](https://en.wikipedia.org/wiki/Sha1), which is why git users sometimes call the hash a `SHA`. 

The common textual representation of a hash looks like this: `eb9095849a85a02e29c3fd7b4224dc4bd55c35e0`. 
This can be automatically abbreviated by `git` to the shortest string that still is unique, in this case it would be: `eb9095849a`.

[^fn-hash]: A hash can thus be used to prove that one was in possession of a specific content (like your document) at a certain point in time, just by publicly releasing the hash (but **not** the document). If the document is published at a later point, anyone can calculate that the previously released 'proof-of-existence hash' was correct.


## Hidden file, -folder

Certain files or folders on a computer, 
for example configuration files belonging to software, 
can be hidden from the user by the operating system and/or file browser.
This is usually done to keep the user from inadvertently modifying or deleting them, because 'seeing' and editing them usually requires some kind of setting, command line flag or other kind of 'trick'.
there is a historically grown convention in operating systems in the `UNIX` family, that files and folder starting with a **`.`** *(dot)* character are hidden.


