---
title: Infos zum Wohnzimmer e.V.
# subtitle: Ist was los, dann steht's in den Nachrichten
img_path: images/room-roman.jpg
seo:
  title: Wohnzimmer e.V. Hintergrundinformationen
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

{% assign sorted_posts = site.categories.Verein %}

{% for post in sorted_posts %}
  <div class="p-gallery">
        {% assign thumb_img_path_is_not_empty = post.thumb_img_path | is_not_empty %}
        {% if thumb_img_path_is_not_empty %}
        <a class="post-thumbnail" href="{{ post.url | relative_url }}">
          <img class="thumbnail" src="{{ post.thumb_img_path | relative_url }}" alt="{{ post.thumb_img_alt }}" />
        </a>
        {% endif %}

        <a class="title" href="{{ post.url }}">{{ post.title }}</a>

        {% if post.excerpt %}{{ post.excerpt }}{% else %}{{ post.subitle }}{% endif %}
          <p class="read-more">
            <a class="read-more-link" href="{{ post.url | relative_url }}"> mehr lesen <span class="icon-arrow-right" aria-hidden="true"></span></a>
          </p>


  </div>
  <br clear="all" />
{% endfor %}