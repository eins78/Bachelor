# Publishing

## Web

- it is just HTML, go upload it onto some host

- self-contained: assets go inside
    - good for outside of web: email, downloads, mobile devices, usb sticks etc
    - can be turned off if it is just for web (caching!)  
      `{ "selfContained": false }`
  
- PDF is also an option, but the default PDF settings in pm are for print, for example links are moved to footnotes.


## Print

- If you want to print and bind two-sided: there is a documentclass "book", which among other things adds extra margins in the center of each double page.

- Font used in LaTeX templated is [Computer Modern], also available in TTF format. Useful in cases where additional elements need to be designed and the same font is desired. Example: Title page for a letterpressed cover


# Troubleshooting


## Markdown

**Problem: **Something I wrote is interpreted as Markdown, but I don't want that.

*Example:* How to write words with \*stars\* but no emphasis?

*Solution: *Backslash escapes

```
How to write words with \*stars\* but no emphasis?
```

---

