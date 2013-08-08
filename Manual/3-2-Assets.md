## Assets

Assets are all files that are needed to output a publication 
other than the text source.

In order to keep a project 'portable', all assets need to reside 
inside the project folder, otherwise it might only be compiled on 
the computer it was created.

If version control is used, this also ensures that all assets are 
tracked and all collaborators have access to them. 

*Note:* Because the assets may are also created using software, 
they could have a 'source' themselves: 
An image created in *Photoshop* would have a source '`.psd`' file 
and a resulting '`.jpg`' image.

As mentioned above, generated content should not be committed. 
How this applies to generated assets as well depends on the context 
of the project. In any case only the sources **or** the results should be tracked.

- If the assets are fairly static, or are the responsibility of either a 
  single collaborator or someone outside the project, the results can be
  committed. 
  
- If the **production** of the assets should happen **collaboratively**, 
  their sources should be committed. This requires that all 
  collaborators have *access to the software* producing the results, 
  which could be a problem when using commercial software. Also, 
  a mechanism must be in place so that the assets are *re-generated* 
  every time the sources change.
  
- In more complex cases, a [separate repository](http://git-scm.com/book/en/Git-Tools-Submodules) 
  for handling the assets could be created and the generated assets published elsewhere.



### Images

Images need to be linked with a 'path' **relative** to the document!

That means it should not start with a full path, like `C:\My Files\`, `/Users/foo/` or `/home/foo/`.

Two dots (**`..`**) in a path mean 'go up one directory'.

*Example:* In the following setup, the relative path from the document to the image is **'`../figures/image.jpg`'**

```
    Project/
    ├── figures/
    │   └── image.jpg
    ├── Text/
    │   ├── document.md
    (...)
```

Supported Formats:

- `JPG`, `GIF`, `PNG`

There are 2 additional vector formats only support by either print or web targets: 

- `PDF` can be used in print
- `SVG` can be used in web

If print and web outputs should be created from the same source, the `.pdf` or `.svg` extension has to be omitted from the 'path', like this: '`../figures/image`' **and** both versions must exist next to each other.

```
    (...)
    ├── figures/
    │   ├── image.pdf
    │   ├── image.svg
    (...)
```

If the creation of `SVG` images is not possible, it is recommended to use (non-vector) `PNG`, 
together with the following configuration:

```
"web": {
  "defaultImageExtension": "png"
}
```


### Bibliography

[References](https://en.wikipedia.org/wiki/Citation) 
to external sources, like books and articles is a requirement 
for many types of publications.

As shown in the *Markdown* section, there is an easy syntax to 
insert a reference anywhere in the text, using only an **identifier** 
and an optional location, 
like so: `See [@id, pp. 23-42]`.

However, for this to work a **database**, storing the actual meta-data 
pertaining to the identifier must exist, and be *configured* (`"bibliography": "foo.bib"`).

The recommended database is [`BibTeX`](https://en.wikipedia.org/wiki/Bibtex) format, also commonly used in **`TeX`**. 

Because it already widely used, there are diverse (GUI) programs available for all 
operating systems helping to maintain a `BibTeX` file. 
It is possible that you are already using one, because software  which help managing 

If you are already using software to manage and organize your resources (like for example  [Mendeley](https://en.wikipedia.org/wiki/Mendeley)), support for `BibTeX` might already be built-in.


The format has many idiosyncrasies, most of which are unfortunately shared by the GUIs. They are beyond the scope of this manual, but the `BibTeX` file used in 
it can serve as an example. It shows how to store the most commonly used types 
of media, including how cross-reference them (e.g. an article *in* a book). 
Moreover, since the `BibTeX` format is widely ambiguous, it shows a subset 
which *reliably work*.^[E.g. there is the media type 'electronic', 'URL' and 'webpage', which could be used for web sites as sources, but only 'electronic' does work with all flavors of **`TeX`**]

*Example:* A `BibTeX` file with a **book**; an **article** inside that book ('incollection', note the 'Crossref'); an **'electronic'** resource; and a **'misc'** *(miscellaneous)* item to be used for anything else (like unpublished works).

```
@book{benjamin:street,
	Author = {Walter Benjamin},
	Publisher = {Penguin UK},
	Title = {One-Way Street and Other Writings},
	Year = {2009}}

@incollection{benjamin:teaching,
	Crossref = {benjamin:street},
	Title = {TEACHING AIDS},
	Year = {1928}}

@electronic{ziemann:formalia,
	Author = {Andreas Ziemann},
	Title = {Eine kleine Einf{\"u}hrung in wissenschaftliches Arbeiten},
	Url = {http://www.uni-weimar.de/medien/soziologie/lehre/Wissenschaftliches_Arbeiten.pdf},
	Volume = {3},
	Year = {2009}}
    
@misc{Nietzsche:schreibzeug,
	Author = {Friedrich Nietzsche},
	Howpublished = {KSB 6, Nr. 202},
	Month = {02},
	Title = {Letter to Heinrich K{\"o}selitz},
	Year = {1882}}
```

#### Citation Style

When resource is cited with the correct syntax,  
and the identifier is found in the database, 
the reference will appear in the output according 
to the **citation style**.

Generally, citation styles differ between institutions, 
and there are many variations.

The most common distinctions are listing the references in 
numerical order, or by author and date ('Harvard' or 'Chicago' style). 
The latter is the default (when no style is explicitly configured).

Luckily there is yet another established standard: 
The [Citation Style Language](https://en.wikipedia.org/wiki/Citation_Style_Language) 
defining them in a machine-readable way. 
There are currently [over 6000 styles](http://zoteromusings.wordpress.com/2013/04/30/why-you-should-be-excited-there-are-6000-csl-styles/) 
in the official collection, [though less than a thousand of them are unique, or 'independent' styles](http://pinux.info/csls_counter/). 
The rest of them are almost-empty 'dependent' definitions of specific journals, declaring which of the 'independent' styles they use.


- [Search and Download](http://zotero.org/styles) a style which suits your context (or is required by your institution)

- There is also a [style browser and editor by Mendeley *(Beta Version)*](http://editor.citationstyles.org/about/)

- The standards:
      * numeric
        * [IEEEE](http://zotero.org/styles/ieee-with-url) *(used in this document)*
        * [DIN 1505-2](http://zotero.org/styles/din-1505-2-numeric)
      * author/date
        * [DIN 1505-2](http://zotero.org/styles/din-1505-2)
        * [Harvard](http://zotero.org/styles/harvard1) ([German](http://zotero.org/styles/harvard7de))

