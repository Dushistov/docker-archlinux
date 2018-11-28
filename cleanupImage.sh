#!/usr/bin/env bash

# remove all cached package archives
yes | LC_ALL=en_US.UTF-8 pacman -Scc
#pacman --noconfirm -Scc

#openssl requires perl, but really there is no need for it
#see https://bugs.archlinux.org/task/54887
yes | LC_ALL=en_US.UTF-8 pacman -Rdd perl

rm -fr /usr/include

# remove all the manual files
rm -rf /usr/share/man/* /usr/share/info /usr/share/doc /usr/share/gtk-doc \
 /usr/share/licenses /usr/share/texinfo /usr/share/gnupg /usr/share/gettext \
 /usr/share/glib-2.0 /usr/share/bash-completion /usr/share/aclocal \
 /usr/share/emacs

# no need runtime
rm -f /usr/lib/libgfortran.so* /usr/lib/libgo.so* \
  /usr/lib/libLLVM-7.so

#  /usr/share/locale /usr/share/i18n/locales \

# clean tmp folders
rm -rf /tmp/*
rm -rf /var/tmp/*
