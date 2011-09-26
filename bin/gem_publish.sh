#!/bin/bash

git_commit.sh "Releasing gem"

rm *.gem;
rake gemspec:generate &&
gem build ./*.gemspec && 
gem push ./*.gem
rm *.gem;

sleep 30;

ls *.gemspec | sed 's/.gemspec$//g' | xargs gem install 
