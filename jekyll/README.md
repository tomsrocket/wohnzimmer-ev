

## Wie schreibt man Texte?

Einfach den entsprechenden Post anlegen oder einen bestehenden bearbeiten im Folder _posts.
Im Hauptverzeichnis liegen außerdem die Haupt-Seiten (impressum.md, datenschutz.md), etc, die kann man ebenfalls bearbeiten, die funktionieren genauso.

Am Anfang jedes Artikels ist ein Bereich mit "Variablen" auch "Frontmatter" genannt. Da kann man einige Dinge festlegen:
* **title:** Überschrift des Artkels
* **subtitle:** Unterüberschrift
* **excerpt:** Wird auf der Übersichtsseite als Anlesetext angezeigt
* **date:** Artikeldatum
* **thumb_img_path:** Vorschaubild für die Übersichtsseite
* **thumb_img_alt:** Alternativtext des Vorschaubilds (=Beschreibung für Blinde und Suchmaschinen)
* **content_img_path:** Bild, das auf der Artikelansicht im linken Bereich im Hintergrund angezeigt werden soll
* **layout:** Sollte erstmal immer "post" sein.
* **categories:** Wo soll  der Artikel erscheinen:
   * News
   * Fotos

Man kann einzelne Variablen auch weglassen, dann wird das default genommen, oder leer gelassen.

Der Artikel Text selbst kann mit "Markdown" formatiert werden. Hier steht, was man bei Markdown alles verwenden kann:
* https://raw.githubusercontent.com/stackbit-themes/fjord-jekyll/master/style-guide.md

## Konventionen für Bildergalerien

Bildergalerien gehen so:
* Fotos müssen immer
  * in einem Unterordner sein von "/galerien/"
  * Keine Sonderzeichen im Unterordner-Namen haben
  * Bilder-Dateinamen dürfen auch keine Sonderzeichen enthalten
* Eintrag für die Bildergalerie machen in _config.yml:
  * Der Name der Galerie muss immer sein: "fotos-soundso"
  * Genauso muss auch der zugehörige "_post"-Titel sein, s.u.
* Post für die Bildergalerie anlegen:
  * Der Post muss genauso heißen wie die Bildergalerie, sonst funktioniert der "Galerie" Button auf den Fotoseiten nicht...
  * Ein Vorschaubild einstellen
  * Ein Bild für das linke-seite-design auf der Bildergaleriedetailseite eintragen
  * Im Content den Bildergaleriecode einsetzen (von bestehender Galerie kopieren)
* "bundle exec jekyll build" ausführen
  * Dann wird jekyll-pig ausgeführt, ein gem das im lokalen Unterordner "jekyll-pig-master" liegt
    * Dort kann auch das Template angepasst werden für die Bildergalie-Übersicht und -Detail-Seite
  * Dann werden die Thumbnails erstellt, die Bildergalerieseiten und die Pages für die Bilder
  * Alles wird automatisch unter "assets", "includes" und "data" angelegt
  * Wenn es einen Fehler gibt, dass eine HTML Datei mit dem Namen der Bildergalerie nicht unter "_includes" gefunden wird, dann in der Gemfile `gem "github-pages"...` auskommentieren, damit nur das *jekyll-pig* gem ausgeführt wird.

# How to develop
```bash
  # Das ist das einfachste, aber der bemerkt nicht alle Änderungen
  bundle exec jekyll serve
```

```bash
  # In case of error do this to get more information:
  bundle exec jekyll serve --safe --trace --verbose
```

Alternative:

```bash
  # im ersten Terminal
  bundle exec jekyll build --watch

  # im zweiten Terminal
  cd _site
  python3 -m http.server 8000
```

## Deploy
```bash
    bundle exec jekyll build
    rsync -avz --delete _site/ server.de:/path/to/webhost/public/dir
```

## Infos zur initialen Installation

1. Install Jekyll on Ubuntu: https://jekyllrb.com/docs/installation/ubuntu/
2. Then create your blog with the following commands: https://jekyllrb.com/docs/
3. For image galleries do this: https://github.com/clnhlzmn/jekyll-pig
4. This is a nice theme: https://github.com/stackbit-themes/fjord-jekyll

## How to regenerate the galleries after change to "jekyll-pig" gallery thingy

```bash
    # cleanup.
    # make sure you have not saved anything else there:

    rm -rf assets/html  # generated image galleries poto detail htmls
    rm -rf assets/img   # generated image galleries pictures
    rm -rf assets/js    # generated image gallery javascript
    rm _includes/fotos-*.html # generated index pages
    rm _data/fotos-*.json # gallery metadata

    bundle install # to install the gem again
    bundle exec jekyll build # generate gallery html
```
