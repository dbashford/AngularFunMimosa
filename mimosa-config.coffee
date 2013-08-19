exports.config =
  minMimosaVersion: "0.14.14"
  modules:['lint','require','server','minify','live-reload','web-package']
  minify:
    exclude:[/\.min\./, "javascripts/main.js"]
