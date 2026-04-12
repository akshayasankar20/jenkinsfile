A) Setup & Configuration
git --version
→ Shows the installed Git version.

  git config --global user.name "Your Name"
→ Sets your username globally.

  git config --global user.email you@example.com
→ Sets your email globally.
---
B) Create or Clone Repositories

git init
→ Creates a new Git repository.
  
  git clone <repository-url>
→ Clones a remote repository.
---
  
C) Check Status
git status
→ Shows file changes and staging info.
---

D) Add Files (Staging Area)
git add file.txt
→ Stages a specific file.

git add .
→ Stages all changed files.
---

E) Commit Changes
git commit -m "Message"
→ Creates a new commit.

  git commit --amend
→ Modifies the previous commit.
---

F) View History
git log
→ Shows full commit history.

  git log --oneline
→ Condensed commit history.

  git log --oneline --graph --all
→ Visual branch history.
---

G) Branching
git branch
→ Lists branches.

  git branch <name>
→ Creates a new branch.

  git checkout <name>
→ Switches branch.

  git checkout -b <name>
→ Creates & switches to a branch.
---

H) Merging
git merge <branch>
→ Merges a branch into current.
---

I) Remote Repository Commands
git remote add origin <url>
→ Adds remote repo.

  git remote -v
→ Shows remotes.

  git push origin main
→ Pushes changes.

  git push -u origin main
→ Pushes & sets upstream.

  git pull origin main
→ Fetches & merges.

  git fetch
→ Fetches without merging.
---

J) Undo / Reset / Restore
git restore file.txt
→ Restores file to last commit.

  git restore --staged file.txt
→ Unstages a file.

  git reset --soft HEAD~1
→ Undo commit, keep staged.

  git reset --mixed HEAD~1
→ Undo commit, keep changes.

  git reset --hard HEAD~1
→ Undo commit and delete changes.

  git revert <commit-id>
→ Creates a reverse commit.
---

K) Stash (Temporary Save)
git stash
→ Saves work temporarily.

git stash list
→ Shows all stashes.

git stash apply
→ Applies stash.

git stash pop
→ Applies stash and removes it.
---

L) Tagging
git tag v1.0
creates a tag

git push origin v1.0
pushes the tag to remote
---

git config --global color.ui auto
→ set automatic command line coloring for Git for easy reviewing

git reset [file]
→ unstage a file while retaining the changes in working directory

git diff
→ diff of what is changed but not staged

git diff --staged
→ diff of what is staged but not yet committed

git log branchB..branchA
→ show the commits on branchA that are not on branchB

git log --follow [file]
→ show the commits that changed file, even across renames

git diff branchB...branchA
→ show the diff of what is in branchA that is not in branchB

git show [SHA]
→ show any object in Git in human-readable format

git rm [file]
→ delete the file from project and stage the removal for commit

git mv [existing-path] [new-path]
→ change an existing file path and stage the move

git log --stat -M
→ show all commit logs with indication of any paths that moved

git config --global core.excludesfile [file]
→ system wide ignore pattern for all local repositories

git remote add [alias] [url]
→ add a git URL as an alias

git fetch [alias]
→ fetch down all the branches from that Git remote

git merge [alias]/[branch]
→ merge a remote branch into your current branch to bring it up to date

git push [alias] [branch]
→ Transmit local branch commits to the remote repository branch

git pull
→ fetch and merge any commits from the tracking remote branch

git rebase [branch]
→ apply any commits of current branch ahead of specified one

git reset --hard [commit]
→ clear staging area, rewrite working tree from specified commit

git stash drop
→ discard the changes from top of stash stack
---
