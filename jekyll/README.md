# Infos

1. Install Jekyll on Ubuntu: https://jekyllrb.com/docs/installation/ubuntu/
2. Then create your blog with the following commands: https://jekyllrb.com/docs/
3. For image galleries do this: https://github.com/clnhlzmn/jekyll-pig
4. This is a nice theme: https://github.com/stackbit-themes/fjord-jekyll

# How to start

    bundle exec jekyll serve


# how to regenerate the galleries after change to "jekyll-pig" gallery thingy

```bash
    rm -rf assets/* # make sure you have not saved anything else there
    rm _includes/fotos-*.html
    rm _data/fotos-*.json
    bundle install # to install the gem again
    bundle exec jekyll build # generate gallery html
```
