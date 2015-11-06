/* global require, module */
var EmberApp = require('ember-cli/lib/broccoli/ember-app');

module.exports = function(defaults) {
  var app = new EmberApp(defaults, {
    // Add options here
  });

  var pickFiles = require('broccoli-funnel');
  var mergeTrees = require('broccoli-merge-trees');

  // Swing
  app.import('bower_components/swing/dist/browser/swing.js');

  // Drawing
  app.import('bower_components/signature_pad/signature_pad.js');

  // Font-Awesome
  var fontAwesomeFonts = pickFiles('bower_components/components-font-awesome/fonts', {
    destDir: '/fonts'
  });

  return mergeTrees([app.toTree(),fontAwesomeFonts]);
};
