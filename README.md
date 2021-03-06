# Without Plugin for DocPad

[![NPM version](https://badge.fury.io/js/docpad-plugin-without.svg)](http://badge.fury.io/js/docpad-plugin-without)
[![Build Status](https://travis-ci.org/ukoloff/docpad-plugin-without.svg?branch=master)](https://travis-ci.org/ukoloff/docpad-plugin-without)

Use [withOut](https://github.com/ukoloff/without) templates inside
[DocPad](http://docpad.org) sites.

## Install

``` bash
docpad install without
```

## Usage

`withOut` templates look like
[Jade](http://jade-lang.com/) or [HAML](http://haml.info/)
templates but they are plain Coffee Script!

``` coffee
# src/layouts/default.html.coffee
(tag "!DOCTYPE", true) html: true
html ->
  head ->
    title @getPreparedTitle()
    raw @getBlock("meta").toHTML()
    raw @getBlock("styles").add(["/styles/style.css"]).toHTML()
  body ->
    h1 @document.title
    raw @content
    raw @getBlock("scripts").add(["/vendor/jquery.js", "/scripts/script.js"]).toHTML()
```

For historic reasons you can put `withOut` templates into `.html.wo` files,
but recommended extension is `.html.coffee`.

## License

Licensed under the incredibly [permissive](http://en.wikipedia.org/wiki/Permissive_free_software_licence) [MIT license](http://creativecommons.org/licenses/MIT/)
