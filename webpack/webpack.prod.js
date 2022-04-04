// @ts-nocheck
const { merge } = require('webpack-merge');
const common = require('./webpack.common.js');
const path = require('path');
module.exports = merge(common, {
    mode: 'production',
    entry: "./src/app.js",
    output: {

        filename: "main.[contenthash].js",
        path: path.resolve(__dirname, '../dist'),
        publicPath: './'

    },

});