#!/usr/bin/env bash

gitTop=$( git rev-parse --show-toplevel 2> /dev/null )
[[ "" == "$gitTop" ]] && exit 0
gitRemotes=$gitTop/.gitremotes
[[ "$( git remote -v )" == "" ]] && exit 0
git remote -v > $gitRemotes
