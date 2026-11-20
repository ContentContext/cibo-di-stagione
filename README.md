# Calendario di Stagione

A single-page guide to seasonal foods in Italy. Filter by season, month, food group and region, or search by name.

Covers vegetables and fungi, fruit, nuts, legumes, meat and game, cured meats, dairy, cheese, and fish and seafood. DOP, IGP and Slow Food Presìdio products are marked.

## Run it

Open `index.html` in a browser. There is no build step and no dependencies beyond Google Fonts.

## Data

The dataset is the `RAW` block near the end of `index.html`, one food per line:

`name|English|group|months|regions|tags|note`

Groups: V vegetables, F fruit, N nuts, G legumes, C meat, S cured meats, L dairy, Q cheese, P fish. Months are 1-12, with ranges and commas (`10-3` wraps over the new year). Regions use codes such as `EMR`, or `*` for widely grown. Tags: D DOP, I IGP, S Presìdio.

## Sources

Ministero delle Politiche Agricole seasonal calendar, Fondazione Slow Food Presìdi, Regione Emilia-Romagna and Regione Marche publications, plus editorial calendars used to cross-check. The full list is in the page footer. Months are a guide and shift with latitude, altitude and year.
