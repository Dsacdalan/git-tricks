# Git Tricks

Collection of Git Tips and Tricks

## Force Push Only One Branch

`git push origin +<branch>`

This command will force a push to a specific branch and is the same as:
`git push --force origin <branch>`

## Check for Merge Conflicts

`git merge --no-commit --no-ff <branch>`

`git merge --abort`

This first command merges the two branches but does not make a commit or fast forward.
The output will show if the merge was successful or if there are conflicts.

The second command aborts the merge and brings the current branch back to its original state.