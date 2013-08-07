# Versioning

````{.TODO}

- segue to GIT 
- working dir
- clone + fork
- push, remotes

````

In general, *versioning* is the act of collecting, labeling, ordering and indexing all the different revisions of a document. 
By extension, this also tracks the *changes* made between those revisions, making it possible to retrace the development of the document and possibly even the thought process of the author.

These drafts and revisions and their comparison have spawned diverse studies of these topics in the literary sciences.
Yet, there is a danger of loosing this raw material as more and more authors move to produce their textual work using a computer.

This danger was also personal starting point for this whole project as well, 
sparked by Cory Doctorow's essay "Extreme Geek" [[@blog:Cory:Geek]], where he writes about this problem and how he solved it for himself. 
As Doctorow summarizes in a blog post:

> "I was prompted to do this after discussions with several digital archivists who complained that, prior to the computerized era, writers produced a series [of] complete drafts on the way to publications, complete with erasures, annotations, and so on. These are archival gold, since they illuminate the creative process [`…`]. By contrast, many writers produce only a single (or a few) digital files that are modified right up to publication time, without any real systematic records of the interim states between the first bit of composition and the final draft."

Being a blogger, digital activist and all-round-nerd, he falls into the target group of 'technically involved' authors, so it comes as no surprise that he found a highly technical solution. He commissioned a piece of software ([`flashbake`](https://github.com/commandline/flashbake)), which automatically keeps track of his work in 15-minute-intervals.

Underneath, it uses the **`git`** version control system, which in the last years has slowly become the 
de-facto standard for versioning and collaborating open-source software project. 
Its usage grew hand in hand with the popularity of [*GitHub*](https://github.com/about), a **`git`** hosting service providing a whole ecosystem of features, 
including a web view for all files and content of the repository. 

Sources for this guide and further reading: "Pro Git" by Scott Chacon [[-@chacon:progit]]

## Git

This chapter might seem overly technical, but I have broken down what one needs to know about **`git`** to an absolute minimum. For example, won't explain in detail how to use the **`git`** command line, or any other **`git`** interface.

Some newer graphical interfaces (especially GitHub's apps for [Mac](http://mac.github.com) and [Windows](http://windows.github.com)) make working with **`git`** so easy that the first half of this chapter is condensed to the click of a single button; the second half are 3-4 clicks in their web interface.

But: since your documents history should be as important to you as it is to Mr. Doctorow, I really want you to understand the **concepts** and **nomenclature** behind it.

The hope is to give you peace of mind that your work is *saved* and *safe*. 
Though there is a [quote from Linux Thorvalds promising exactly that](https://www.youtube.com/watch?v=4XpnKHJAok8&feature=player_detailpage&t=3529)[^fn-git-data-promise], only with some background knowledge you can start to really trust the system.
On the other hand, this same knowledge should enable you to learn how to use any **`git`** interface in a relatively short time.

[^fn-git-data-promise]:
   > "I guarantee you, if you put your data in git: 
   > You can trust, that 5 years later, after it was converted from your hard disk, to DVD, to whatever new technology, and you copied it along, [...] you can verify that the data you get out is the exact same data you've put in." (He goes on to explain that in the past, they were malicious agents physically breaking into a data center, trying to smuggle bad changes into the Linux kernel, which adds some gravitas to his testimony.)


## Repository

The most basic term a one needs to know when using **`git`** is a **"repository"**.
It is a purposefully general term, but it helps to think of it as a 'folder':

!['Repository' Folder ](../_images/git/icon-folder-repository.png)

This is not even wrong: If you directly edit files in a `git` repository on 
your computer, it will be there just like any other folder.
In our case, this folder contains all the files related to a publication:

- Most importantly, the text files *('sources')*
- Any non-text assets that are part of the publication, like images and figures.
- The `papermill.json` configuration file
- Any additional files that need to be tracked, or just shared.

So, what makes this folder special? 
Inside of it, there is one more thing: 
a **`hidden folder`** called `.git`!

!['.git' Folder](../_images/git/icon-folder-git.png)

As a user, you never directly use this folder, but it is good to know where it is and what is its purpose.[^fn-git-folder] 
It contains a lot of meta-data and also a small database-like storage. 
The **`git`** software reads and writes to this storage to facilitate all the nice things described further in this chapter. 
It may sound like "magic" at times, so keep in mind: It is just a very simple (but clever) program which reads and writes to this small database inside your repository.

[^fn-git-folder]: Namely, if you move or copy repository-folder from one place to another (disk, computer, …).
If the folder is copied as a whole, the `.git` folder is still inside, meaning the complete versioned history is included, for good or bad.
If just single files from the folder are copied somewhere else, the `.git` is not copied with them, thus not including the history/database.

## Clone and Fork


````{.TODO}

- if repo not started locally, must clone

- clone is a copy of a repo

- fork is any clone with changes!

````

## Commit

**"committing"** is the activity of saving your changes into the **`git`** database, 
the result of this is also called a **"commit"**.
Every commit contains the state of all the files in your repository at a certain point in time. Since we are talking about "Versioning", it is best to think of every commit as a "version" of your project. 
You can later use **`git`** to go "back in time", revisiting or even restoring an older version; or to a list changes between two specific commits. As we will see later in the chapter, commits can also be sent around – this is how **`git`** is used for collaboration.

Let's take a look at how to do a commit:

First, you should review your changes. 
If you are happy with them, you need to tell **`git`** which files you want to commit. 
This is called **"staging"**. It allows you to make several changes at the same time, 
but only commit a fraction of them each time. 
In software development, this is mostly done to break up the changes into smaller pieces, 
making them easier to review on the receiving side.

After all changes that should be included are staged, you can proceed with the actual commit. 
It includes:

- your name and email 
- a **commit message** (if you supplied one)
- a **`diff`** of your changes
- a **`hash`** of all those items

The **commit message** is meant to *explain* the changes you've made. 
Depending on your context, it might be addressed to yourself, collaborators like editors or co-authors, or anybody looking a repository's history.

In the software world, this message is very important, because the text being worked on
is *source code*, meant to be interpreted by a computer. Any changes can have side effects 
which might be non-obvious by just looking at the changes. 

When working with a human-language document's source however, most of the time the changes in the text don't need to be explained since the intent is already apparent from the changes. In this case, the message can be omitted or even automatically generated, containing information about the circumstances of the commit (location, name of the computer, etc).

The **`hash`** of each commit is calculated. It can be used as a ***unique* version number** because it refers to a specific commit in a repository.

Furthermore, the **`hash`** of every commit is used by `git` in the background to make sure that your content has not been change, be it by error, accident or malicious intend: If every commit just stores the differences between the last and the current version, those changes are (cryptographically speaking) secured as much as the content of your online banking website.



## Branch

We already established that **clones** are copies of a **repository**, and **forks** are **clones** with any changes not found elsewhere.

But git is even more flexible: There is also the possibility of having a complete copy of the repository inside your local copy. These "built-in" copies are called **branches**.

They make it possible to work on an isolated copy of the complete project, for example while working something that is not ready to be included in the "main" project, but still should be committed in small steps.

There is always at least one branch in every git repository, by default this branch is called *'master'*, which is nothing more than a default name.[^fn-master-branch] 

New **branches** are always based on a **commit** of an existing branch.
This commit is the starting point of the branch, or *where your changes branch off*, just like in a tree.

![Illustration of a branch](../_stash/branches.png)

[^fn-master-branch]: "There is nothing special about the name 'master' apart from convention" [@silverman:gitpocket, p. 4]


## Push

**`git`** is a distributed version control system. 
There is no inherit need to have a central server, or any internet connection: 
everything can be done locally/offline.

Yet, it is possible to use any number of 'remotes', which are again copies of the repository, outside of it. 
They *can* be a real server, but it is also possible to use any storage, like an external USB drive.


- repo can have one or more remotes
- remotes are other places where copies of the repo exist
    * any local or external disk, like a USB drive
    * servers
    * services (GitHub, Gitlab)
- can **push** to a remote
- always from branch to branch
- always linear history

- uses: backup, collaboration


## Collaboration

- goes hand in hand with versioning
- fun fact: collaboration can also happen between 1 person (me, and me from last week)

*GitHub* has also played a vital role in shaping the ways people are collaborating using *git*.

![A small repository on GitHub](../_images/git/screenshot-github-user-repo.png)


### Merging

If we break this process down into the individual steps, it should sound familiar to anyone who has ever collaborated on text documents with others. Even when using paper, they are the same:

- obtain a copy of the document(s) *(clone)*
- make some changes, review and save them *(commit)*
- instead of sending the complete changed document back, formulate just the changes[^fn-manual-diff] *(diff)* 
- informing the source of the document of your changes, asking it to integrate them

[^fn-manual-diff]: Keep in mind that even if you don't do it yourself, then whomever you sent the document to has to do it.

Example letter:

>     Dear Sir/Madam,
>     
>     attached you find my changes to your files. 
>     I kindly ask that you apply them to your source.
>     
>     Regards,
>      Jon Doe
>     
>     ---
>     Changes:
>     - In the file "doc.md", third line, first character, 
>       I have changed the word "hello" to "world".

But instead of doing all this steps manually, we have already learned to that **`git`** takes care of the cloning, branching and committing; and that every commit is nothing more than the difference between the new version and the old version.

**So, how do we send our changes?**

Technically, there are many ways to do this. **`git`** can create an email for you not unlike the example letter, this is how [collaboration on the linux kernel](https://lkml.org/lkml/2013/7/30/63) and [many more projects](http://lists.freedesktop.org/archives/systemd-devel/2013-February/009172.html) is mostly dealt with. 

Note: Gitlab calls this "Merge Request", which could be argued to be a better fitting term.

