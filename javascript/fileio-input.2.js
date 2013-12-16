
var fs = require("fs");
var stream = fs.createReadStream('../data/file.txt');


var last = "";

stream.on('data', function(chunk) {
    var lines = (last+chunk).split("\n");
    for(var i = 0, n=lines.length-1; i<n; i++) {
        console.log(lines[i]);
    }
    last = lines[i];
});

stream.on('end', function() {
    console.log(last);
});

stream.resume();

