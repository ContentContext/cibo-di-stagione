#!/bin/sh
# index.html is the single source (English page). The Italian page is the same file with lang="it".
mkdir -p it
sed -e 's/<html lang="en">/<html lang="it">/' -e 's#<title>Eat the seasons</title>#<title>Mangia le stagioni</title>#' index.html > it/index.html
