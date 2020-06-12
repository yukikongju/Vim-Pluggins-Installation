## Git Command
Some Git command you should know:

* git add: add files to commit

```
add files:git add [file1] [file2]
add all files: add .
```

* git branch:

```
list branch in repository: git branch
create new branch: git branch [new-branch]
delete branch: git branch -d [branch-name]
```

* git clone: get a repository from url

```
git clone [url]  
```

* git checkout: 

```
switch to another branch: git checkout [branch-name]
create branch and go to it: git checkout -b [new-branch]
```

* git commit: commit a file

```
git commit -m “[ Type in the commit message]”
```

* git config: set author name and email adress

```
git config -global user.name "[name]"
git config –global user.email “[email address]” 
```

* git diff: show difference in files

```
show difference between commited and uncommited file: git diff
get difference between old and new commit: git diff –staged
difference between branch: git diff [first branch] [second branch]
```

* git init: start a new repository

```
git init [repository name]
directory already created: git init
```

* git log: list all commit for the current branch

```
git log
include renaming files: git log -follow[file]
```

* git merge: merge specified branch to the current branch

```
git merge [branch name]
```

* git pull: fetches and merges remote server to current files

```
git pull [Repository Link]
```

* git push: merge local change to remote server

```

push added commit to remote branch: git push
```

* git reset: undo chanes made in he files

```
git reset [file]
go to commit, but preserves local changes: git reset [commit]
go to specified commit without keeping local change: git reset –hard [commit]
```

* git remote: connect local repository to remote server

```
git remote add [variable name] [Remote Server Link]
```

* git rm: delete file from directory

```
git rm [file]
```

* git show: show metadata and content of a specified commit

```
git show [commit]
```

* git stash:

```
temporarily stores modified tracked files: git stash save
restore most recent stashed files": git stash pop
list all stashed changes: git stash list
discard most recent changes: git stash drop

```

* git status: list all files commited


```
git status
```

* git tag: show tag of specified commit

```
git tag [commitID]
```

