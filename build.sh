#!/bin/sh
# index.html is the single source (English page). The Italian page is the same file with lang="it".
mkdir -p it
sed 's/<html lang="en">/<html lang="it">/' index.html > it/index.html
