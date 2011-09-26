#!/bin/bash

git add -A;
git commit -m "$1";
git_sync;

git submodule foreach "git_commit.sh '$1'; echo ''"
