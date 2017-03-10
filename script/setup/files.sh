#!/usr/bin/env bash

#Create soft links for files

for i in .*; do
  if [ -f "$i" ]; then
   ln -s "${PWD}/$i" "${HOME}/$i"
   echo "create soft links for $i [DONE]"
  fi
done
