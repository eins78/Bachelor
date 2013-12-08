% BA-Verteidigung
% Max F. Albrecht


# `papermill`{.cursive}

 \

**Books as Software**


# 

## **Writing**


##

 Writing digital text \
 **is more easy than ever**.


## 

![](images/text-editor.png)

## 

![](images/word-processor.png)

##  {data-background="images/wordpress-editor.png"}

**Publishing** digital text is \
*also more easy than ever*.
 
<!-- Software: Wordpress.org, etc. -->

## 

<i class="fa fa-3x fa-facebook-square"></i> 
<i class="fa fa-3x fa-twitter-square"></i> 
<i class="fa fa-3x fa-tumblr-square"></i>
<i class="fa fa-3x fa-google-plus-square"></i> 


#   

## **Problem**:

Writing and publishing \
**long-form text** \
is still to hard.

<small>(Especially when compared to other media: \
  Graphic, Audio, Video, …)</small>

##  

Writing is more than typing text.

- Formatting and Semantics
- Footnotes, Citations, Bibliography
- Editorial Process, Collaboration
- Layout, Design, 'Prepress'
- Different ouput formats

# 

## Common \
**Solutions**

- Microsoft Word, Apple Pages, …
- `HTML`
- `LaTeX`

## Microsoft **Word** 

has a *usability limit*.

## 

It is a word processor, \
**not a book producer**.

## 

It is **proprietary** software \
and can't be easily **automated** \
or integrated.

## 

The **source** format 
<small>(`.docx`)</small> \
is  **'closed'**, too.

## **`HTML`**

has a high *learning curve*.

## 

```
<h2>
  <strong><code>HTML</code></strong>
</h2>

<p>has a high <em>learning curve</em>.
</p>

```

## 

It has a very common **runtime** \
<small>(the browser)</small> \
but no good **authoring tools for writers**.

<!-- ## 

It lacks important \
**typographic features** \
<small>(even with `CSS`).</small> -->

<!-- 

## Irony

<small>**`HTML` was made for the web** — It *made* the web.</small>

<small>It was invented specifically \
to make </small>**publishing of** \
**scientific works** more easy.</small>

<small>It became so popular that it enabled \
the creation of **'web apps'**.</small>

<small>Yet, as was already shown, \
  most of these regard **other media**.</small> 

## Irony 2

<small>**`HTML` was made for the web**</small>

It *made* the web.

<small>It was invented specifically for easy</small> \
**publishing of scientific works**.

<small>It became so popular that it enabled the creation of</small> \
**'web apps'**.

<small>Yet, as was already shown, most of these regard </small> \
**other media**.

-->


## **`LaTeX`** 

has a very high *learning curve*.

##  

```
\subsection{
  \textbf{\texttt{LaTeX}}
}\label{latex}

has a very high \emph{learning curve}.

```

##

`LaTeX` is a <small>(very good)</small> **typesetting engine**, \
but not a writing environment.

## 

<small>It also doubles as a \
**programming language** \
and **runtime**.</small>


## **"Fuck it"**

The most common solution

1. Find a publishing house
2. Write Book
3. *There is no step 3* – they take care of it


# 

## **Conclusion**

- There are 'good enough' **tools** \
**for writing**, but not publishing.

- There are 'open' **tools and services** \
**for publishing**, but not writing.

- A new approach to is needed to **combine them**.


## The other side

- Programmers already have a myriad of tools available
- Programmers who are also authors already use these for writing


## Inspiration

From a technical standpoint, \
there is **no difference** between a **natural language** and **a programming language**.

#  

## Primary Goals

## <i class="fa fa-cogs"></i> \
**Text** \
***development***

Make the **mode of production \
and tools** used in (open source) *software development* \
**more accessible for authors and writers**.

- automation
- version control / collaboration

## <i class="fa fa-random"></i> \
**Cross-media** \
***publishing***

- media-agnostic source
- output to print + web today
- can be adapted for new, future media

<aside class="notes">
  Produce a document source which is as media-agnostic as possible, in the hopes that if it works for print and web today, it should be possible to adapt to the to-be-invented media of the future.
</aside>


## <i class="fa fa-suitcase"></i> \
**Long Term** \
***Sustainability***

- reproducibility
- "as long as computers exist"

<aside class="notes">
  Make sure that once written, the source of a publication can be compiled into the desired output 'forever', or at least as long as computers exist.
</aside>




#  

## Secondary Goals
  

## <i class="fa fa-align-left"></i> Plain text

- no "binary container" (like Word, Pages, …)
- most compatible format
- software dev tool work with plain text

<aside class="notes">
  If a document is to be written in a binary container (like a Microsoft Word File), the usefulness of a software-like development process are very limited.
</aside>

## <i class="fa fa-sitemap"></i> \
Structured \
Content

- needed for cross-publishing
- oppertunity for software helpers

<aside class="notes">
  If the software understand the structure of the content,
  it can offer better help.
</aside>


## <i class="fa fa-cloud-download"></i> \
Online & offline

- Work on any computer \
  <small>(i.e. Linux, Mac, Windows).</small>

- **Don't** require an internet connection.


## <i class="fa fa-check-square-o"></i> Simplicity & Documentation

- **abstract away** as much as possible **from the user** *(long term)*
- always provide **complete documentation** of what's happening in the **background** 

<aside class="notes">
  A complicated system is harder to use, explain and extend than a simple one.
  A long-term goal is to abstract away as much as possible from the user, while at the same time still providing all the necessary information for those who want or have to know what is happening in the background.
</aside>

## <i class="fa fa-unlock-alt"></i> Free-Libre-*Open-Source*

- anything long term is **impossible** without **open source**

<aside class="notes">
  Without open source components \
  it is **impossible** to achieve \
  long-term reproducibility.
</aside>



# 

## **Implementation**

## Building Blocks

The most important parts \
are **existing tools** \
that programmers already use.


## <i class="fa fa-code-fork"></i> **`git`**

- Version control
- distributed, fast and efficient, <small>free and open source</small>

## <i class="fa fa-code"></i> **`Markdown`**

Markup syntax for **humans**, \
*easy* to type and read.

## 

```markdown
## Markdown

Markup syntax for **humans**, \
*easy* to type and read.
```

## <i class="fa fa-copy"></i> **`(La)TeX`**

Typesetting engine

## <i class="fa fa-magic"></i> **`pandoc`**

Document Conversion Magic

# 

## Practical Part

**"Developer Preview"**

- **`papermill.json`**: Project configuration specification
- **`mill`** CLI: work with project
- **`bookstrap`** Design and Layout for web output

## <i class="fa fa-archive"></i> Project \
**configuration**

- **`papermill`**`.json` \

- stores information about the publication

    - **meta data**: author, title, etc.
    - **build settings**: how to output


## 

<pre class="small">
{
  "name": "papermill",
  "author": "Max F. Albrecht",
  "description": "Bachelor Thesis (Media Design)",
  "version": "0.1.0",
  "input": {
    "bibliography": "bibliography.bib",
    "csl": ".papermill/ieee-with-url.csl",
    "list": [
      "Introduction",
      "Manual",
    ]
  },
  "output": {
    "print": {
      "class": "book",
      "mainfont": "Source Sans Pro",
      "monofont": "Source Code Pro",
      "fontsize": "11pt"
      "geometry": "a4paper, centering, bindingoffset=15mm",
    }
  },
  "license": "MIT",
}
</pre>

## 

<pre class="small">
{
  "<b>input</b>": {
    "<b>bibliography</b>": "bibliography.bib",
    "<b>csl</b>": ".papermill/ieee-with-url.csl",
    "<b>list</b>": [
      "Introduction",
      "Manual",
    ]
  }</b>
}
</pre>

## 

<pre class="small">
{
  "<b>output</b>": {
    <i>"web": true</i>,
    "<b>print</b>": {
      "<b>class</b>": "book",
      "<b>mainfont</b>": "Source Sans Pro",
      "monofont": "Source Code Pro",
      "fontsize": "11pt"
      "<b>geometry</b>": "a4paper, centering, bindingoffset=15mm",
    }
  }
}
</pre>


## <i class="fa fa-terminal"></i> **`mill`** **CLI**

Reads project config <small>(`papermill.json`)</small>, \
**compiles output** with `pandoc` \
(web and print).

## 

````
mfa@Quince:~/CODE/Papermill/Bachelor
$ mill output
info:    papermill OK
````

## 

- written in `node.js` (JavaScript)
- functionality inside modules
- can be used in server application


## <i class="fa fa-file-text"></i> **`bookstrap`**

Design and Layout for web output

- uses 'modern web' tech <small>(`HTML5`, `CSS3`)</small>
- 'progressive enhancement' <small>(mobile-first)</small>
- markup readable on any (old) browser

<aside class="notes">
  This means the result can be read in any browser.
  Any 'modern' features are add-ons, only work if the 
  browser supports it.
  Otherwise, the (readable) default is used.
</aside>


## 

[PIC]

## 

- 'grid' based on typographic units
- basic 'responisve'-ness (TOC)

<aside class="notes">
  layout adjusts to screen size
</aside>

# 

## Theoretical Part

 \

**Introduction** & **Manual**

#  

## Conclusion

## reflection

- "Developer Preview"…
- not usable for end user atm
- consistent basis for further developement

# 

## Roadmap

## **API** <i class="fa fa-cloud"></i>

**"Application Programming Interface"**

- Compile publications "in the cloud"
- <small>no need to install ~2GB of dependencies</small>

## **CI** <i class="fa fa-truck fa-flip-horizontal"></i> 

**"Continuous Integration"**

- write local, compile global

## **IDE** <i class="fa fa-home"></i>

**"Integrated \
Development Environment"**

- write and publish in a web browser


## Call for Contributions

# {.dev}


<style>
/* icons from font awesome */
@import url(http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css);
.reveal i.fa {
  font-style: normal;
  font-family: FontAwesome;
}
.reveal i.fa-3x {
  font-size: 3em;
} 
/* for overriding 'simple' theme */
.reveal {
  font-size: 4em;
  font-family: "Source Sans Pro", sans-serif;
  font-weight: 600;
  color: #444;
}
b, strong {
  font-weight: 700;
}
.reveal h1,
.reveal h2,
.reveal h3,
.reveal h4,
.reveal h5,
.reveal h6 {
  text-transform: inherit;
  font-family: inherit;
  font-weight: inherit;
  color: #444;
}
.reveal pre, .reveal code {
	font-family: "Source Code Pro", monospace;
  font-weight: 500;
  box-shadow: none;
}
.reveal strong code {
  font-weight: 700;
}
.reveal pre.small {
  font-size: 0.5em;
}
.reveal ul {
  list-style-type: none;
  text-align: inherit;
  margin: 0;
}
.cursive, code.cursive {
  font-family: 'Grand Hotel', cursive;
  letter-spacing: 0;
}
.reveal small {
  vertical-align: baseline;
}
.reveal section img {
  border: none;
  box-shadow: none;
}
.reveal .controls div.navigate-left,
.reveal .controls div.navigate-left.enabled {
  border-right-color: hsl(200, 100%, 25%); }

.reveal .controls div.navigate-right,
.reveal .controls div.navigate-right.enabled {
  border-left-color: hsl(200, 100%, 25%); }

.reveal .controls div.navigate-up,
.reveal .controls div.navigate-up.enabled {
  border-bottom-color: hsl(200, 100%, 25%); }

.reveal .controls div.navigate-down,
.reveal .controls div.navigate-down.enabled {
  border-top-color: hsl(200, 100%, 25%); }

.reveal .controls div.navigate-left.enabled:hover {
  border-right-color: hsl(200, 100%, 40%); }

.reveal .controls div.navigate-right.enabled:hover {
  border-left-color: hsl(200, 100%, 40%); }

.reveal .controls div.navigate-up.enabled:hover {
  border-bottom-color: hsl(200, 100%, 40%); }

.reveal .controls div.navigate-down.enabled:hover {
  border-top-color: hsl(200, 100%, 40%); }

.reveal .progress {
  height: 0.8%;
  background: hsl(200, 100%, 25%);
}
.reveal .progress span {
  background: #fff;
}
</style>