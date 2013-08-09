## Goals


There are 3 primary goals:

### Publication development

Make the *mode of production* and tools used in (open source) software development 
more accessible for authors and writers.

- **Version control** 
- **Automation**, Continuous integration
- IDEs: Integrated Development Environments
- Libraries: reusable modules

<!-- 
Conceptually, there is no difference between a natural written language and a programming language.  
Both have conventions like syntax and grammar, need to be parsed, compiled, etc.
-->

### Cross-media publishing

- *Problem*: one input, multiple outputs
- *Solution*: semantic and structured content

Produce a document source which is as media-agnostic as possible, in the hopes
that if it works for print and web today, it should be possible to adapt
to the to-be-invented media of the future.

Requires careful weighing of options and features: The syntax has to be powerful enough to serve power-users, but needs to be friendly enough to not intimidate newcomers.

### Long-term reproducibility

Make sure that once written, the source of a publication can be compiled into the desired output 'forever', 
or at least as long as computers exist.

---

From these, we can derive our secondary goals:

### Plain text

If a document is to be written in a binary container (like a *Microsoft Word* File), 
the usefulness of a software-like development process are very limited.

### Online & offline

The framework should be usable on a [*general purpose computer*](https://en.wikipedia.org/wiki/Turing_machine) without requiring an internet connection.

At the same time, it should be possible to use it 
with just a web browser, because less and less personal computing devices are in fact 'general purpose'.

### Simplicity

A complicated system is harder to use, explain and extend than a simple one.

A long-term goal is to abstract away as much as possible from the user, 
while at the same time still providing all the necessary information 
for those who *want* to know what is happening in the background.

Most of the contents of the current **'Manual'** will stay relevant 
and will simply be updated parallel to the framework. 
This **'Introduction'** however will hopefully not be required reading in the future.


### Free/Libre/Open Source

Using 'open source' software can be a goal in itself. Usually, this is a matter of personal or political opinion. 

However, considering the already listed goals, the problems that arise from them and the existing approaches to solve them, we can safely conclude that there is no alternative to use 'open source' software, at least for the framework itself.[^fn-usersoft]

[^fn-usersoft]: The users operating system, text editor, etc. can of course be proprietary or 'Open Source'.

<!-- It does not make any difference as long as all the needed software can be installed easily – that alone rules out Apple's closed `iOS` system as well as the 'open' Android (for today). -->

<!-- 
!["Open Source All The Things" *([internet meme][flossmeme])*](../_stash/open-source-all-the-things.jpg)

[flossmeme]: http://thinkahol.wordpress.com/2012/04/05/open-source-all-the-things-free-energy-and-free-information-for-a-free-people/ 
-->

