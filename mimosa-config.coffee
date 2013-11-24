exports.config =
  minMimosaVersion: "1.0.0"
  modules:['jshint','csslint','require','server','minify','live-reload','web-package']
  minify:
    exclude:[/\.min\./, "javascripts/main.js"]
