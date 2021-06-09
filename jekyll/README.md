# Infos

1. Install Jekyll on Ubuntu: https://jekyllrb.com/docs/installation/ubuntu/
2. Then create your blog with the following commands: https://jekyllrb.com/docs/
3. For image galleries do this: https://github.com/clnhlzmn/jekyll-pig
4. This is a nice theme: https://github.com/stackbit-themes/fjord-jekyll

# Konventionen für Bildergalerien

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


# Styles für Texte

Hier steht was alles geht: https://raw.githubusercontent.com/stackbit-themes/fjord-jekyll/master/style-guide.md



# How to start

    bundle exec jekyll serve


# how to regenerate the galleries after change to "jekyll-pig" gallery thingy

```bash
    # cleanup. make sure you have not saved anything else there:
    rm -rf assets/*
    rm _includes/fotos-*.html
    rm _data/fotos-*.json

    bundle install # to install the gem again
    bundle exec jekyll build # generate gallery html
```
