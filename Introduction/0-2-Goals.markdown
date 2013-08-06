# Goals


There are 3 primary goals:

## Publication *development*

Make the tools and workflows used in (open source) software development more accessible for authors and writers.

- **version control** 
- automation
- continuos integration
- IDEs: Integrated Development Environment
- libraries: reusable modules


## Cross-media publishing

- *problem*: one input, multiple outputs
- *solution*: semantic and structured content

Define every important element with a general syntax, allowing it to be exported to either print or web.

That requires a careful weighing of options and features. The syntax has to be powerful enough to serve power-users, but needs to be friendly enough to not intimate newcomers.

## Long-term reproducibility

Make sure that once written, the source of the publication can be compiled into the desired output 'forever', or at least as long as computers exist.

* open standard for publication 'packages'
* long-term availabilty of the build toolchain through use of open source software 


From these, we derive our secondary goals:

## Plain text

If a document is to be written in a binary container (like a Microsoft Word File), the uses of a software-like development process are very limited.

## Online & offline

The framework should be usable on a [*general purpose computer*](https://en.wikipedia.org/wiki/Turing_machine) without requiring an internet connection.

At the same time, it should be possible to use it 
with just a web browser, because less and less computing devices that people use are in fact general purpose.

## Ease of use

A complicated system is harder to use and harder to explain than a simple one.

A long-term goal is to abstract away as much as possible from the user, 
while at the same time still providing all the necessary information 
for the ones that *want* to know what is happening in the background.

Most of the contents of the current **'Manual'** will stay relevant 
and will simply be updated in parallel with the framework. 
This **'Introduction'** however is hopefully not a required reading in the future.


## Free/Libre/Open Source

Using 'Open Source' software can be a goal in itself. Usually, this is a matter of personal or political opinion. 

However, considering the already listed goals, the problems that arise from them and the existing approaches to solve them, we can safely conclude that there is no alternative to use 'Open Source' software, at least for the framework itself.[^fn-usersoft]

[^fn-usersoft]: The users operating system, text editor, etc. can of course be proprietary or 'Open Source'.
It does not make any difference as long as all the needed software can be installed easily – that for example rules out Apple's closed `iOS` system as well as the 'open' Android (for now).

<!-- 
!["Open Source All The Things" *([internet meme][flossmeme])*](../_stash/open-source-all-the-things.jpg)

[flossmeme]: http://thinkahol.wordpress.com/2012/04/05/open-source-all-the-things-free-energy-and-free-information-for-a-free-people/ 
-->

