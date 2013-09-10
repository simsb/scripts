#!/bin/bash
# script to do an svn rebase on a working branch in a git repository
# will only run if 'master' is checked out
currentBranch=$(git branch | sed --quiet 's/* \(.*\)/\1/p')
activeTrackingBranch="$(cat ~/.gitsvnactivetrackingbranch)";

if [ -z "$activeTrackingBranch" ]
then
    echo "Run gitmaster to set the active tracking branch"
    exit
fi

if [ -n "$(git status --porcelain)" ]
    then
        echo [ "Branch has changed or untracked files which must be committed of stashed before rebasing. " ]
        exit
fi

if [[ `grep $currentBranch ~/.$activeTrackingBranch` =~ $currentBranch ]] && [ "$currentBranch" != "$activeTrackingBranch" ]
then
    echo "rebasing $currentBranch from $activeTrackingBranch";
    git rebase $activeTrackingBranch
    exit
fi


if [ "$currentBranch" != "$activeTrackingBranch" ];
then
    echo "Can only run on $activeTrackingBranch branch."
    exit
else
    if [ "$currentBranch" = "$activeTrackingBranch" ]
    then
        echo "Rebasing $activeTrackingBranch"
        git svn rebase
    fi
    exit
fi
