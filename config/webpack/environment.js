const { environment } = require('@rails/webpacker')
const webpack = require('webpack');

const plugins = [
  new webpack.ProvidePlugin({
    $: 'jquery/src/jquery',
    jQuery: 'jquery/src/jquery',
    jquery: 'jquery',
    'window.jQuery': 'jquery',
    // Translations
    I18n: 'i18n-js',
  })
];

environment.config.set('plugins', plugins);

module.exports = environment
