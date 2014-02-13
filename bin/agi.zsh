#!/usr/bin/zsh
set -x


set -e
# if now - last apt-get update > 1 hour, update again
last_update=$(stat --printf="%Y" /var/cache/apt/pkgcache.bin)
now=$(date +%s)

if (( $now - $last_update > 3600 )) ; then
  sudo apt-get update
fi

sudo apt-get install $
