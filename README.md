# Without Plugin for DocPad

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
# src/layouts/default.html.wo
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

## License

Licensed under the incredibly [permissive](http://en.wikipedia.org/wiki/Permissive_free_software_licence) [MIT license](http://creativecommons.org/licenses/MIT/)
