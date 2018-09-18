#!/bin/bash
cd -- "$(dirname "$BASH_SOURCE")"
cd ..
echo -e "\033[1;31mEnter the location and name of the page (ie: 'blog/My new blog'):\033[0m"
read name
slug=$(echo "$name" | iconv -t ascii//TRANSLIT | sed -E 's/[~\^]+//g' | sed -E 's/[^a-zA-Z0-9/]+/-/g' | sed -E 's/^-+\|-+$//g' | tr A-Z a-z)
hugo new $slug/index.md
echo -e "\033[1;31mDone!\033[0m"
