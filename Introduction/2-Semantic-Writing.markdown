# Semantic Writing

````
TODO:
- explain document structure (from Manual)
- examples of markups? HTML, La

narative: 
- we need structured text. 
- html and latex are too hard
 and media-specific!
- ok, then markdown
  - from web
  - extensions for elements
- publication structure: papermill config
````

## Markup and Markdown

Historically, formatting has always been "embedded" into the final document by the author or writer. 
Any emphasis, the position of line breaks and paragraphs was (hopefully) copied in conjunction with the text.
With the introduction of the moveable type printing press, this changed dramatically:
Any text now had to be split up into it's composing letters and spaces and re-arranged by just using the available components,
namely the lead characters.

So, long before the widespread use of computers in the writing process and before the process now widely described as "Digitalization" even started,
the printing press marks the transition from thinking about and working with text as a discrete (countable, "digital") signal, 
as opposed to the monolithic, continuous signal it was seen as before.

Not surprisingly, the typical problems that have to be dealt with when converting any signal from continuous to discrete, from analog to digital, can be observed from this period on and are partly still not solved till now.

Suddenly, the letters of the used alphabet were not enough to properly "encode" a text so that it could be reproduced properly and with loosing neither *content* nor *intent* of the author. Jan Tschichold, one of the most influential typographers of the early 20th century, is complaining about the ambivalence of paragraph positions still in the 1960, when authors already used (discrete) typewriters to turn in manuscripts:

> "Thousands of working hours are sacrificed by typographers,
> getting the right order of letters written without indentation,
> with countless pencil marks and deep thought.
> This idling could be avoided if the manuscripted would be
> handed in formatted as described here." [[@Tschichold:Drucksachen]] [^fn-tschicholdparagraphs]

Since then, the situation became equally better and worse: 
Nowadays, most authors produce their manuscripts digitally, which should leave less room for interpretations and errors.
Yet, the vast majority of non-technical writers are using a **`WYSIWYG`**-based system such as Microsoft `Word` or Apple `Pages`, meaning the intent of the author is once again visual output 

Note that there are alternatives in the market, but these are mostly aimed at very complex projects.
An example would be [Adobe `FrameMaker`](https://en.wikipedia.org/wiki/Adobe_Framemaker), which according to Wikipedia does allowing input of "structured text", but is aimed at "industries such as aerospace, where several models of the same complex product exist, or pharmaceuticals". [[@wiki:framemaker]]


## Common Pitfalls

<!-- narrative:
- historic connotations - traditional way to stylize intend (partly cause of the confusion)
- ex: the intent is *emphasize*
   - the "default" style is an *italic* font variant
   - historically also underlining has been used
   - in a web browser, this can be taken quite literally: -->

The relationship between formatting, typography and design 
is a common source of confusion. 
On the one hand, it can be summed up quite simply:

* Formatting *conveys intent*, thus is part of the document's *source*. \
* Design *translates* this source into an *output*, using tyography.

On the other hand, there are specific connotations embedded in our visual and cultural knowledge.
These are shaped by a) how this translation was handled historically; and b) the user interface of text editors since the 1980s:

![Bold/Italic buttons. From left to right: Microsoft Word 2.0 (1989); Apple Pages (2009); WordPress (2012); Apple iOS 6 (2012) ](../_images/bold-italic-buttons.png)

As these examples show, interfaces of text editors rarely make a difference between 'bold' and 'strong emphasis', 

````{.edit}


TODO: segue


````

bold, italic, underline, letter-spacing ^[in German: "Sperrung" oder "Sperrsatz"]
   
In `HTML`, there is the "`<em>`"-Tag,
which marks the enclosed text as emphasized. 

If there is no associated (`CSS`-) instruction the browser how to  *style* this tag, it uses the built-in default. 
In case of the Safari web browser, as in all relevant browsers, this defines "emphasis" as "italic":

> ```
> em {
>   font-style: italic;
> }
> ``` 
> 
> [Webkit Default CSS, Zeilen 993-995 *(truncated)*](https://github.com/WebKit/webkit/blob/453a7eab8e40608be3cbcf29c59137606f1bf4d7/Source/WebCore/css/html.css#L993-L995)




[^fn-tschicholdparagraphs]: Original: "Tausende von Arbeitsstunden werden von Typographen geopfert, 
um einzugslos geschriebene Briefe durch unzählbare Bleistiftangaben
und Nachdenken richtig zu ordnen.
Dieser Leerlauf ließe sich vermeiden, wenn die Manuskripte gleich
in der soeben beschriebenen Art abgeliefert würden."


