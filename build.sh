#!/bin/sh
# index.html is the single source (English page). The Italian page is the same file with lang="it",
# an Italian title and description, and its own canonical address.
set -e
mkdir -p it
sed -e 's/<html lang="en">/<html lang="it">/' \
    -e 's#<title>Eat the seasons</title>#<title>Mangia le stagioni</title>#' \
    -e 's#<meta name="description" content="[^"]*">#<meta name="description" content="Cosa è di stagione in Italia, mese per mese: verdura, frutta, formaggi, pesce, carne e altro, per stagione, gruppo alimentare e regione.">#' \
    -e 's#<link rel="canonical" href="https://contentcontext.github.io/cibo-di-stagione/">#<link rel="canonical" href="https://contentcontext.github.io/cibo-di-stagione/it/">#' \
    index.html > it/index.html
# guard: if any replacement silently failed, /it/ would serve English, so stop here
for want in '<html lang="it">' '<title>Mangia le stagioni</title>' 'Cosa è di stagione in Italia' 'cibo-di-stagione/it/">'; do
  grep -q "$want" it/index.html || { echo "build.sh: expected text not found in it/index.html: $want" >&2; exit 1; }
done
echo "built it/index.html"
