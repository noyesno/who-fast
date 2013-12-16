
var fs = require('fs'),
    readline = require('readline');

var rd = readline.createInterface({
    input: fs.createReadStream('../data/file.txt'),
    output: process.stdout,
    terminal: false
});

rd.on('line', function(line) {
    console.log(line);
});
