// @ts-nocheck
const { merge } = require('webpack-merge');
const common = require('./webpack.common.js');

module.exports = merge(common, {
    mode: 'production',
    path: path.resolve(__dirname, './dist'),
    publicPath: './'
});