#!/usr/bin/env sh

set -eux

tar -xf /tmp/hugo.tar.gz -C /tmp
mkdir -p /usr/local/sbin
mv /tmp/hugo /usr/local/sbin/hugo
rm -rf /tmp/hugo.tar.gz

HUGO=/usr/local/sbin/hugo

ssh-keyscan bitbucket.org >> ~/.ssh/known_hosts
git clone --depth=1 --single-branch $GIT_REPO /site

cd site
$HUGO server --log --theme=$HUGO_THEME --baseURL=$HUGO_BASEURL --port=80 --appendPort=false --bind=0.0.0.0 --disableLiveReload=true