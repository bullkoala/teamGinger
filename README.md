# README #

Fuck it all

### What is this repository for? ###

* Fuck you and the horse you rode in on, that's what

# For the reals #

[Online version of the Pro Git book](http://git-scm.com/book/en/v2)

# Quick & dirty, like Branch #

* HTTPS if you like typing in your password every time

	'''git
	$ git clone https://github.com/bullkoala/teamGinger.git
	'''

* Or if you're lazy like I am and you've set up SSH:

```
$ git clone git@github.com:bullkoala/teamGinger.git
$ git checkout --track origin/master
$ git checkout --track origin/testing
$ git checkout dev
```

* 'Splainin:
   * Clone the repo to your local machine. It defaults to the dev branch, and
   that's the only branch it initially copies and tracks
   * Make a local copy of the master branch and switch to it
   * Make a local copy of the testing branch and switch to it
   * Switch back to the development branch

# Everything else #

## If you have files you don't want to upload, you list them in '.gitignore'

### Example: ###

**workspace/.** - *This ignores all hidden files at that level. '/.*'

**workspace/*/.** - *This ignores all hidden files one level down*

**workspace/*/bin** - *This ignores all files in the 'bin' directory*

***.swp** - *This ignores swap files*

...You get the idea. 

## Commands & workflow ##
* See what's up
```
#!git
git status
```
* See the names of all the branches in your *local* repo
```
#!git
git branch
```
* See the names of your *local* branches, and the *remote/branch* information if they're set up to track remotely.

```
#!git
git branch -vv
```
* Switch to the *local branch BRANCH_NAME*
```
#!git
git checkout BRANCH_NAME
```
**When you make a new branch, it's based off the branch you're currently on. Just make sure you check your shit before you branch and freak out because the files you're looking for aren't there or something. I've done this. A lot. It sucks.**

* Make a new branch called *NEW_BRANCH* and switch to it. This branch only exists locally, it's not pushed to BitBucket or tracked except on the machine with which you created the branch.

```
#!git
git checkout -b NEW_BRANCH
```

  
  * If you do use the wrong branch as base
    * switch to whatever branch you meant to use as the base
    * delete the screw up branch
    * check your status to make sure one last time you're on the right branch
    * create the branch again
```
#!git
git checkout master
git branch -d MISTAKE
git status
git checkout -b NEW_BETTER_BRANCH
```
Boom. Fixed. Done.

* Once you've made changes, add/delete/edit/etc, you have to stage them for commit.
```
#!git
git add foo, bar, foobar.txt, etc
```
You can add an entire directory, file by file, whatever.

* Now that the changes have been staged, you can commit them. Make sure you remember to write a coherent commit message that says what you did, what you changed, what you added, etc.
```
#!git
git commit -m 'MESSAGE'
```
If you forget the -m flag, or you try to leave the message blank, git will create one for you, open it up in the text editor and make you write one before it commits your changes.

* If you want to merge the changes you've made in your new branch into another, like *origin/dev*, you need to
    * switch to the branch into which you'd like to merge your changes, in this case your local copy of *origin/dev*, which should just be *dev*
    * pull down any changes from the *remote* so you're working with the most up to date version of the branch
    * merge your changes into *dev*
```
#!git
git checkout dev
git pull
git merge NEW_BRANCH
```

* Or, if you want to add the entire branch to the *remote*, run

```
#!git
git push -u REMOTE_NAME NEW_BRANCH
```
You only have to do this the first time. After that, you can just run
```
#!git
git push
```
and it will sync with the correct *remote/branch*.

* Pull down changes from the *remote branch* and merge them into your *local branch*.

```
#!git
git pull
```

## When everyone cloned this repo it just had the *master* branch. Now it's got a *dev* branch too ##

To make a local copy of the *dev* branch that's already set up to track the remote, run

```
#!git
git checkout --track origin/dev
```
Which does the following:

* *checkout* change to the *dev* branch. You don't have it yet but the *--track* option will take care of that.

* *--track* is shorthand for 'pull the *dev* branch from the *remote* and make a local copy that tracks (pull/push) the *remote*'

* *origin/dev* - *origin* is the short *remote* name automatically set by git so you don't have to type the entire URL each time. *dev* is the name of the branch being copied from the *remote*.  To change the short name of the *remote* from *origin* to *MadRepsSon*, you run

```
#!git
git remote rename origin MadRepsSon
```
