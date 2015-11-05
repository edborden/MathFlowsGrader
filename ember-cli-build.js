/* global require, module */
var EmberApp = require('ember-cli/lib/broccoli/ember-app');

module.exports = function(defaults) {
  var app = new EmberApp(defaults, {
    // Add options here
  });

  // Swing
  app.import('bower_components/swing/dist/browser/swing.js');

  return app.toTree();
};
