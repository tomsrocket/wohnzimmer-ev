---
title: Wohnzimmer e.V. Bildergalerien
subtitle: Fotos, Fotos und Fotos von unseren Veranstaltungen, sowie von weiteren Gelegenheiten. Schön sortiert in Galerien.
img_path: images/room-jockel2.jpg
seo:
  title: Wohnzimmer e.V. Bildergalerien
  description: Fotogalerien, Fotosammlungen von unseren Wohnzimmer-Lounges und so weiter.
  extra:
    - name: 'og:type'
      value: website
      keyName: property
    - name: 'og:title'
      value: About Me
      keyName: property
    - name: 'og:description'
      value: A page about me and my work
      keyName: property
    - name: 'og:image'
      value: images/about.jpg
      keyName: property
      relativeUrl: true
    - name: 'twitter:card'
      value: summary_large_image
    - name: 'twitter:title'
      value: About Me
    - name: 'twitter:description'
      value: A page about me and my work
    - name: 'twitter:image'
      value: images/about.jpg
      relativeUrl: true
layout: page
---

{% for post in site.categories.Fotos %}
  <div class="p-gallery">
        {% assign thumb_img_path_is_not_empty = post.thumb_img_path | is_not_empty %}
        {% if thumb_img_path_is_not_empty %}
        <a class="post-thumbnail" href="{{ post.url | relative_url }}">
          <img class="thumbnail" src="{{ post.thumb_img_path | relative_url }}" alt="{{ post.thumb_img_alt }}" />
        </a>
        {% endif %}

        <a class="title" href="{{ post.url }}">{{ post.title }}</a>

        <span>{{ post.date | date_to_string }}</span> -
        {{ post.subtitle }}

  </div>
  <br clear="all" />
{% endfor %}