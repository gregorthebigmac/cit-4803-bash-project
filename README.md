# cit-4803-bash-project

A bash scripting project for our CIT-4803 class at EIU

## A quick write-up about how to use git

First, you need an account with github. If you don't have one, you should go make one right now. If you ever plan on doing code for school, or in your career, git will be your best friend. But first, let's get some basic nomenclature and concepts down.

## What's the difference between git and github?

git is just (open source) software, no different than something like Notepad or Chrome, except its primary job is to allow you to save different versions of your code.

Think of git like the way your video game save system works. You know how in Skyrim, you can create as many saves as you want, and you can go back to any previous save, as far back as you like? Imagine doing that with your code. You're at a good "save point," and you want to try something kinda risky with your code that might not work, or even break the whole thing? That's okay. Save what you got, and try it. Worst case scenario, load your last save (or any save prior to that) and try something else. That's what git does for your code, and it's a life saver! It also allows multiple people to work on the same project, without interferring with each other's code (more on that later).

## Okay, so what's github, then?

Github is a company that hosts git servers (remember, git is open source software. Nobody "owns" git), and created a simple, easy-to-use web interface for git, making it more accessible and easier to use than traditional git (which works over the command-line only). On top of that, they still maintain all the functionality of "traditional" git, so power users can still do everything they normally do with git. Everybody wins.

## How do I use git?

Okay, so I'm assuming a couple of things off the bat.

1. You're either using Linux, or you're doing that Ubuntu-on-top-of-Windows thing that the prof told everyone to use (personally, I think you'd be better off using *actual* Linux of some kind, even if it's just a virtual machine, instead of the Ubuntu-on-top-of-Windows thing), but if it works for you, then go for it. I can't guarantee any of this will work on that though, because I don't use it. So if you run into problems, message me on Slack, and we'll try to figure it out.
2. You have a github account.

If you have these things, then the first thing we need to do is install git. Open up a terminal and type the following (don't copy the '\$' character. Copy everything that *follows* the '\$'):

    $ sudo apt-get install -y git

This should install git on your system. Once it's done, you should be back at your normal user terminal promt. From there, let's create a folder (henceforth will be called a directory), and let's call it "git_repos" (you don't have to call it this, but it'll make for a nice place to keep all your git repos that's easy to find).

    $ mkdir git_repos

Once you've done this, change to that directory.

    $ cd git_repos

Once inside, copy the git repo.

    $ git clone https://github.com/gregorthebigmac/cit-4803-bash-project

First thing, is it will ask you for your username and password. This only happens with "private" repos (which ours is). If this were a "public" repo, it would not ask you for your username and password, it would just work with no questions asked. With github, you can only make private repos if you pay for an account with them (yes, I have a paid account). It's not terribly expensive ($7/mo), and for someone like me, who writes a lot of code, and doesn't always want it exposed to the world, it's well worth the expense. Also, you can get like, I think 2 years or something free if you're a student, so if you need it, take advantage of it. Now, back to the task at hand. Once you've entered your credentials, it will begin downloading the repo into the git_repos directory, under a new directory named cit-4803-bash-project. Now change into *that* directory, just like you did with git_repos earlier.

Now we're inside the actual git repo, itself. Just to do a quick check, use the following command to get the status of your repo:

    $ git status

This isn't *really* necessary, since we *just* downloaded it, but it's a good command to remember, and get familiar with what you *should* see when everything's good and normal. It should say something like "up to date with (master) branch, blah blah." Everything's good.

Now we're going to switch to the "playground" branch. We only commit to the "master" branch when we *know* 100% for certain that we have some good, solid, ready-to-showcase kind of code. This is not a git *rule,* per se, it's more of an industry practice (and a good one to get used to). Other branches are for experimentation and integration, master branch is only for when your code is ready for prime-time. To switch to the "playground" branch, use the following:

    $ git checkout playground

This will switch your current working branch from "master" to "playground" and you may notice the files have changed. That's how it works. It literally swaps out files when you switch from one branch to another, that way you *cannot* mess with the files in another branch. It does this to stop you from accidentally screwing up another branch.

Now that you're in the "playground" branch, you can do whatever you want with the code. We won't be using the playground branch for anything other than for you to mess around with git and get used to it, so feel free to mess with files and fuck it up, and try to fix it, whatever. It's why I made it. But, since you just switched to it, and you're all up to date with it, let's modify a file and do the whole "game save" thing with it. Open up any file, doesn't matter which one, and change something in it, and save the file. Now come back to the terminal, and type:

    $ git status

You should see a readout of what files you changed. The git equivalent of making a new game save that you can come back to later is called making a "git commit." This creates a unique save point within the repo and notes the changes you made this time. To create a git commit, type the following into the terminal:

    $ git commit -m "my first git commit"

## What did I just do?

So the first part,

    $ git commit

did exactly what we just said it would. The part in quotes is a brief description of what you did in the commit (except not this time.) Normally, you'd put something in there, like "Changed variable [xyz] to [abc] and changed function call to reflect that" or something short and descriptive like that to help you (and others on your team) figure out what this change was, and why it was important enough for you to commit it. The "-m" flag says I'm going to put my description in double-quotes right here and now, while the "-a" flag tells git to open up a text editor for your to manually type in your commit description, which it will do. For now, let's keep it simple, and just go with "-m" and type it right there. Now, if you did everything correctly, it should say something like "1 file changed, [blah blah] insertions/deletions, [blah blah]." That's fine. That means it worked. Now we're ready to *push* our commit to the "remote branch" (which lives on github). Right now, you're working in the "local" branch, which lives on your machine, and you're *pushing* your changes into the "remote" branch (which lives on github). We do that with:

    $ git push

This time, it will ask for your username and password *regardless* of whether or not this is a private or public repo. That's because not just anyone can push to a git repo. Even with public repos, you must have permission to push code to a repo. It's both a security and safety feature. You don't want random anonymous users pushing code into your repo, even if it's open source software.

Now let's say you made a mistake, or somehow broke your code, and you want to restore what you had before, and undo ALL of your changes since your last commit/push. This is pretty straightforward, even if the syntax seems a little weird.

    $ git reset --hard HEAD

This will completely undo everything you did and put you back to the most recent commit/push you made. If it turns out your mistake is much worse than that, and you want to go back to an even *earlier* commit, that's a bit more involved, and is a bit too complicated for this simple write-up, so just IM me on slack if you find yourself in this situation, and we'll go through it together. But the commands I showed you here should be enough to get you by if you're working on your own repo. There's just one more command you need to know, and while on the surface, it seems easy and straightforward, it can cause some headaches, depending on the situation, so I'm only going to cover the easy part. If someone else on the team modified the remote branch (like you just did when you committed and pushed your code to the remote branch) and you want to get their changes on your local branch, you need to do a git pull:

    $ git pull

This will "pull" all the changes from the remote branch into your local branch. The reason this can get a bit hairy is when you've made changes on your local branch that haven't been committed and pushed to the remote branch. This can (and usually does) cause a conflict, which *can* be difficult to fix. Just IM me if that happens.