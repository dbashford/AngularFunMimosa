exports.config = {
  minMimosaVersion: "2.0.0",
  modules:[
    'jshint',
    'csslint',
    'require',
    'server',
    'minify-js',
    'minify-css',
    'live-reload',
    'web-package',
    'stylus',
    'less',
    'coffeescript',
    'copy',
    'html-templates'],
  minify: {
    exclude:[/\.min\./, "javascripts/main.js"]
  }
}
