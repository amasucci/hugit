#!/usr/bin/env sh

set -eux

HUGO=/usr/local/sbin/hugo

ssh-keyscan bitbucket.org >> ~/.ssh/known_hosts
git clone --depth=1 --single-branch $GIT_REPO /site

cd site
$HUGO server --log --theme=$HUGO_THEME --baseURL=$HUGO_BASEURL --port=80 --appendPort=false --bind=0.0.0.0 --disableLiveReload=true
