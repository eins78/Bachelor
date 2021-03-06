
<!-- 

narrative: 
- we need structured text. 
- HTML and latex are too hard
 and media-specific!
- OK, then markdown
  - from web
  - extensions for elements
- publication structure: papermill config

- semantic vs. style 

-->


# Semantic Writing


> "EFFECTIVE IMMEDIATELY!! NO MORE TYPEWRITERS [`…`] \
> If word processing is so neat, then let’s all use it!"
> 
> — *Michael Scott, President of Apple Computer, 1980 (internal memo)* [-@scott:typewriters, p. 1]


Historically, the semantic structure of any text has always been "embedded" into the final document by the author or writer using visual formatting. 
Any emphasis, division of the text into chapters, paragraphs and line breaks was (hopefully) copied in conjunction with the text.

With the introduction of the [movable type printing press](https://en.wikipedia.org/wiki/Movable_type), this changed dramatically:
Any text now had to be split up into its composing letters and spaces and then re-arranged, using only the available (lead) characters.

So, long before the widespread use of computers in the writing process and before the process now widely described as "Digitalization"^[in German: *'Digitalisierung'*] even started,
the printing press marks the transition from thinking about and working with text as a discrete (countable, 'digital') signal, 
as opposed to the monolithic, continuous signal it was seen as before.

Not surprisingly, the typical problems that have to be dealt with when converting any signal from continuous to discrete, from analog to digital, can be observed from this period on and are partly still not solved until now.

Suddenly, the letters of the used alphabet were not enough to properly "encode" a text so that it could be reproduced properly while loosing neither *content* nor *intent* of the author. Jan Tschichold, one of the most influential typographers of the 20th century, is still complaining about the ambivalence of paragraph positions in the 1960, when authors already used (also discrete) typewriters to write manuscripts:

> "Thousands of working hours are sacrificed by typographers,
> getting the right order of letters written without indentation,
> with countless pencil marks and deep thought.
> This idling could be avoided if the manuscripts would be
> handed in formatted as described here." [[@Tschichold:Drucksachen]] *(own translation)*[^fn-tschicholdparagraphs]

[^fn-tschicholdparagraphs]: *Original:* "Tausende von Arbeitsstunden werden von Typographen geopfert, 
um einzugslos geschriebene Briefe durch unzählbare Bleistiftangaben
und Nachdenken richtig zu ordnen.
Dieser Leerlauf ließe sich vermeiden, wenn die Manuskripte gleich
in der soeben beschriebenen Art abgeliefert würden."


Since then, the situation has become equally better and worse: 
Nowadays, most authors produce their manuscripts digitally, which should leave less room for interpretations and errors.
Yet, the vast majority of non-technical writers are using a **`WYSIWYG`**-based system such as *Microsoft* `Word` or *Apple* `Pages`, meaning the intent of the author is once again 'entangled' with the visual output (or even more so, as shown in the next section, *[Formatting]*).

Note that there are alternatives in the market, but these are mostly aimed at very complex projects.
An example would be [Adobe `FrameMaker`](https://en.wikipedia.org/wiki/Adobe_Framemaker), which according to Wikipedia does allow input of "structured text", but is aimed at "industries such as aerospace, where several models of the same complex product exist, or pharmaceuticals". [[@wiki:framemaker]]


## Formatting

<!-- narrative:
- historic connotations - traditional way to stylize intend (partly cause of the confusion)
- ex: the intent is *emphasize*
   - the "default" style is an *italic* font variant
   - historically also underlining has been used
   - in a web browser, this can be taken quite literally: -->

The relationship between formatting, typography and design 
is a common source of confusion. 
On the one hand, it can be summed up quite simply:

* Formatting *conveys intent*, thus is part of the document's *source*
* Design *translates* this source into an *output*, using typography

On the other hand, there are specific connotations embedded in our visual and cultural knowledge.
These are shaped by a) how this translation was handled historically; and b) the user interface of word processors since the 1980s.

![Bold/Italic buttons. From left to right: *Microsoft Word 2.0* (1989); *Apple Pages* (2009); *WordPress* (2012); *Apple iOS 6* (2012) ](../_images/bold-italic-buttons.png)

As the examples show, the interface of most word processors visualize 'emphasis' as 'italic' and 'strong emphasis' as 'bold'.
While this is consistent with how these semantic intentions are usually expressed typographically, 
it shows the general problem of the **`WYSIWYG`** paradigm: 
the semantic structure of the document is once again 'embedded', thus uncertain.


## Markup and *Markdown*

The alternative approach, sometimes called "What you mean is what you get" in response to **`WYSIWYG`**, 
is to use a Markup Language, like **`HTML`**.
   
Continuing with our example, in `HTML` a phrase is emphasized by enclosing it in a "`<em>`"-Tag.

If there is no associated (`CSS`-) instruction for the browser how to *style* this (semantic) tag, it uses the built-in default, which defines "emphasis" as "italic".

As an example, this is how this definition looks in the source code of the [`Safari` web browser](http://apple.com/safari):

> ```
> em {
>   font-style: italic;
> }
> ``` 
> 
> [Webkit Default CSS, Lines 993-995 *(truncated)*](https://github.com/WebKit/webkit/blob/453a7eab8e40608be3cbcf29c59137606f1bf4d7/Source/WebCore/css/html.css#L993-L995)


Another well-known language for writing structured text, at least among scientific and technical authors, is the syntax used in **`TeX`**, `LaTeX` and other `TeX`-like systems. 

However, both **`HTML`** and **`TeX`** share the same problems. They are: 

a) to **complicated** to use for the average user
a) very **verbose** and require excessive of typing 
a) **media-specific**, **`HTML`** is for the web and  **`TeX`** for print

A popular approach for the first two problems is called ***Markdown***. 

*Markdown*'s creator, John Gruber, presents it as follows:

> "Markdown is intended to be as easy-to-read and easy-to-write as is feasible. [`…`] 
> The single biggest source of inspiration for Markdown’s syntax is the format of plain text email.
> 
> To this end, Markdown’s syntax is comprised entirely of punctuation characters [`…`] carefully chosen so as to look like what they mean. 
> E.g., asterisks around a word actually look like \*emphasis\*. Markdown lists look like, well, lists. Even blockquotes look like quoted passages of text, assuming you’ve ever used email."

He also clarifies the relation to **`HTML`**:

> "HTML is a publishing format; *Markdown* is a writing format. "

However, this means that *Markdown* also has a media-specific heritage,
but the basic syntax is focused enough on semantic elements to be
generally useful. 

There are several extensions to *Markdown* trying to solve this
and other shortcomings of the basic syntax.
The most popular include [*MultiMarkdown*](http://fletcherpenney.net/multimarkdown/), [*PHP Markdown Extra*](http://michelf.ca/projects/php-markdown/extra/), 
and `pandoc`'s *Markdown*, which is the most complete of them.

[`pandoc`](http://johnmacfarlane.net/pandoc/) is 
a program that converts *Markdown* to HTML, like the 
original implementation Gruber released together with his specification, 
but also extends the concept in several important ways.
It was written by John MacFarlane, himself also a scientist and author, 
so his program, the supported syntax extensions and novel output options 
(namely **`TeX`**) are a natural fit for the `papermill` framework and it's most 
important basis.

