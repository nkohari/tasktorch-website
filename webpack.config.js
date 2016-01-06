var path                      = require('path');
var nib                       = require('nib');
var ExtractTextPlugin         = require('extract-text-webpack-plugin');
var StaticSiteGeneratorPlugin = require('static-site-generator-webpack-plugin');

module.exports = {
  entry: {bundle: 'App'},
  module: {
    loaders: [
      {test: /\.coffee$/, loader: 'coffee-loader'},
      {test: /\.jsx$/,    loader: 'script-loader!jsx-loader'},
      {test: /\.styl$/,   loader: ExtractTextPlugin.extract('style-loader', 'css-loader!stylus-loader')},
      {test: /assets/,    loader: 'file-loader?name=/static/[path][name].[ext]'},
    ]
  },
  output: {
    path: path.resolve(__dirname, 'dist'),
    filename: 'static/bundle.js',
    libraryTarget: 'umd'
  },
  plugins: [
    new StaticSiteGeneratorPlugin('static/bundle.js', [
      '/',
      '/product',
      '/pricing',
      '/team'
    ]),
    new ExtractTextPlugin('static/[name].css'),
  ],
  resolve: {
    extensions: ['', '.coffee', '.js', '.jsx'],
    modulesDirectories: ['./src', './assets', 'node_modules']
  },
  stylus: {
    use: [nib()],
    import: [
      '~normalize.css/normalize.css',
      __dirname + '/src/Theme.styl',
      'nib'
    ]
  }
};
