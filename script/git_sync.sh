#!/bin/bash

git push;
git pull;
git fetch;

git submodule foreach "git push; git pull; git fetch; echo ''"
