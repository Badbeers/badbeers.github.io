# Kai Ma — personal homepage

A responsive, English personal homepage inspired by developerFolio. Includes light/dark appearance, research highlights, education, and email contact.

## Edit

- `dist/index.html`: personal copy, work, education, contact.
- `dist/styles.css`: color palette and responsive layout.
- `dist/app.js`: theme control.

Preview with `python3 -m http.server 4173 --directory dist`.

The content is based on Kai Ma's saved profile. Research entries are descriptive summaries, not a formal bibliography. Publication status is retained as user-reported accepted; no author lists, DOI links, hobbies or social accounts are invented. Review content before making the site public.

## Attribution and license

Visual direction and programmer illustration: https://github.com/saadpasta/developerFolio
The illustration is retained from that repository. GPL-3.0 license is included in `dist/LICENSE.txt`; this derivative project is distributed under GPL-3.0. See the upstream repository for asset provenance.

## GitHub Pages

Publish the contents of `dist/` at the root of the `<username>.github.io` repository. In Settings → Pages, select Deploy from a branch, `main`, `/ (root)`. The homepage is `/` and the unchanged CV is `/CV.pdf`. Replace `CV.pdf` with a newer copy to keep the same URL.
