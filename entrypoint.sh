#!/usr/bin/env sh
set -eux

/usr/local/sbin/hugo server --log --theme=$HUGO_THEME --baseURL=$HUGO_BASEURL --port=80 --appendPort=false --bind=0.0.0.0 --disableLiveReload=true

