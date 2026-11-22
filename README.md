# Eat the seasons / Mangia le stagioni

A single-page guide to seasonal foods in Italy. Filter by season, month, food group and region, or search by name.

Covers vegetables and fungi, fruit, nuts, legumes, meat and game, cured meats, dairy, cheese, and fish and seafood. DOP, IGP and Slow Food Presìdio products are marked.

## Run it

Open `index.html` (English) or `it/index.html` (Italiano) in a browser. Each page links to the other. External dependencies: Google Fonts (DM Sans, Vampiro One) and three.js r128 from cdnjs for the turning 3D title; without WebGL or three.js the title falls back to plain text.

`index.html` is the single source. After editing it, run `./build.sh` to regenerate `it/index.html`, which is the same file with `lang="it"`, an Italian title and description and its own canonical address. The page reads the `lang` attribute to pick its language. The script stops with an error if any of those replacements fails.

The current view (search, months, groups, regions, sort, open card, Photos/Drawings) is kept in the address after `#`, so any view can be shared as a link and survives switching language.

## Data

The dataset is the `RAW` block in `index.html`, one food per line:

`name|English|group|months|regions|tags|English note|Italian note`

Groups: V vegetables, F fruit, N nuts, G legumes, C meat, S cured meats, L dairy, Q cheese, P fish. Months are 1-12, with ranges and commas (`10-3` wraps over the new year). Regions use codes such as `EMR`, or `*` for found all over Italy. Tags: D DOP, I IGP, S Presìdio.

## Photos

Photos are linked live from Wikimedia Commons (the `PHOTOS` table in `index.html`, keyed by the Italian name; most are CC BY-SA). Each food's detail view credits the author, licence and source article. Foods without a photo show a colour tile. Where Commons lists no author in our table, the credit points to the file page, which names the author.

## Drawings

Every food also has a print-style drawing (the `ILL` block), shown when the visitor picks Drawings. Each drawing is written once as an SVG `<symbol>` and reused, so the page stays light.

## Sources

Ministero delle Politiche Agricole seasonal calendar, Fondazione Slow Food Presìdi, Regione Emilia-Romagna and Regione Marche publications, plus editorial calendars used to cross-check. The full list is in the page footer. Months are a guide and shift with latitude, altitude and year.
