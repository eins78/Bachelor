## Publishing

### Web

- it is just HTML, go upload it onto some host

- self-contained: assets go inside
    - good for outside of web: email, downloads, mobile devices, usb sticks etc
    - can be turned off if it is just for web (caching!)  
      `{ "selfContained": false }`
  
- PDF is also an option, but the default PDF settings in `papermill` are optimized for print, for example links are moved to footnotes.


### Print


The **font** used in LaTeX templated is [Computer Modern], also available in TTF format. Useful in cases where additional elements need to be designed and the same font is desired. Example: Title page for a letterpressed cover

