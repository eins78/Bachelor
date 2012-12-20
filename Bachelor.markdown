% Papermill
% Max F. Albrecht

# main idea of papermill 

**Use the "mode of production" of software developement for writing longform text.**

In software, the programming language has to be "read" by at least one program: the compiler. 
So in extension, other tools can try to understand so meaning attributed to the text in order to aid the author with the process of writing.
In software developement, the implementation of this is called an `IDE`, an integrated developement enviroment.

Most `IDE`s at least have features like 

- syntax higlighting (parsing the syntax and assigning color to differnent parts of the text)
- build process helpers (interface elements to start the compiler, show its output)
- horizontal integration between those: if the compiler complains about a line number, bring it up for the user

Conceptually, there is no difference between a natural written language and a programming language. 
It has conventions like syntax and grammar, it needs to be parsed, compiled, etc. 
For historical reasons, we use different names for these same jobs/functions when dealing with language as opposed to software, 
but technically they are equal. 

That does not mean that every step of the production of, let's say a book, can (or should) be automated with software. 

img: show workflow - toolchain. starts and ends with "human creativity" (writing ; design/layout)