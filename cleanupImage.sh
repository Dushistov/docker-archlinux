#!/usr/bin/env bash

# remove all cached package archives
paccache -r -k0

# remove all the manual files
rm -rf /usr/share/man/*
