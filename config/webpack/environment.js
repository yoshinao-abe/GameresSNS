const { environment } = require('@rails/webpacker')
const { VueLoaderPlugin } = require('vue-loader')
const vue = require('./loaders/vue')

environment.plugins.prepend('VueLoaderPlugin', new VueLoaderPlugin())
environment.loaders.prepend('vue', vue)
module.exports = environment

//environment.plugins.set('Provide', new webpack.ProvidePlugin({
// $: 'jquery',
// jQuery: 'jquery',
// Popper: ['popper.js', 'default']
// }))