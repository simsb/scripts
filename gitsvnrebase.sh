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

if [ "$currentBranch" != "$activeTrackingBranch" ];
then
    echo "Can only run on $activeTrackingBranch branch."
    exit
else
    echo "Rebasing $activeTrackingBranch"
    git svn rebase

    exit
fi
