#!/bin/bash

    rm -rf assets/*
    rm _includes/fotos-*.html
    rm _data/fotos-*.json

    bundle install # to install the gem again
    bundle exec jekyll build # generate gallery html

