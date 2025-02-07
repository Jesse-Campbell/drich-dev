#!/bin/bash
# check which branch you are on for each repository
wd=$(pwd)
echo ""
for repo in . ip6 ecce eicd irt juggler reconstruction_benchmarks; do
  cd $repo
  printf "%30s: %s\n" $(basename `pwd`) $(git branch | awk '/^\*/{print $2}')
  cd $wd
done
echo ""
