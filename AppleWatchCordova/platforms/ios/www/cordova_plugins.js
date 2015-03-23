cordova.define('cordova/plugin_list', function(require, exports, module) {
module.exports = [
    {
        "file": "plugins/de.twentysteps.cordova.watch/www/watch.js",
        "id": "de.twentysteps.cordova.watch.watch",
        "clobbers": [
            "cordova.plugins.Watch"
        ]
    }
];
module.exports.metadata = 
// TOP OF METADATA
{
    "de.twentysteps.cordova.watch": "0.1."
}
// BOTTOM OF METADATA
});