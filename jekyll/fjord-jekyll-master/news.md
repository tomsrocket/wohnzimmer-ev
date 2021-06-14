---
title: News aus dem Wohnzimmer
subtitle: Ist was los, dann steht's in den Nachrichten
img_path: images/room-roman.jpg
seo:
  title: Wohnzimmer e.V. News
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

{% assign p1 = site.categories.News %}
{% assign p2 = site.categories.Einladung %}

{% assign all_posts = p1 | concat: p2 %}
{% assign sorted_posts = all_posts | sort: 'date' | reverse %}

{% for post in sorted_posts %}
  <div class="p-gallery">
        {% assign thumb_img_path_is_not_empty = post.thumb_img_path | is_not_empty %}
        {% if thumb_img_path_is_not_empty %}
        <a class="post-thumbnail" href="{{ post.url | relative_url }}">
          <img class="thumbnail" src="{{ post.thumb_img_path | relative_url }}" alt="{{ post.thumb_img_alt }}" />
        </a>
        {% endif %}

        <a class="title" href="{{ post.url }}">{{ post.title }}</a>

        <span>{{ post.date | date_to_string }}</span> -

        {% if post.excerpt %}{{ post.excerpt }}{% else %}{{ post.subitle }}{% endif %}

  </div>
  <br clear="all" />
{% endfor %}