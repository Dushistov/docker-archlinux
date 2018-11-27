#!/usr/bin/env bash

# remove all cached package archives
yes | LC_ALL=en_US.UTF-8 pacman -Scc
#pacman --noconfirm -Scc

rm -fr /usr/include

# remove all the manual files
rm -rf /usr/share/man/* /usr/share/info /usr/share/doc /usr/share/gtk-doc \
 /usr/share/licenses /usr/share/texinfo /usr/share/gnupg /usr/share/gettext \
 /usr/share/glib-2.0 /usr/share/bash-completion /usr/share/aclocal \
 /usr/share/emacs

# clean tmp folders
rm -rf /tmp/*
rm -rf /var/tmp/*
