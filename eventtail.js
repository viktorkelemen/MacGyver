
var sys = require("sys"),
    http = require("http"),
    stdin = process.openStdin();

var buffer = [];


var attributes = {
    eventType: /\s+type\s+=\s(\w+)\s*|\n/
};


function readAttribute(attribute, buffer) {

    var i,j;

    var matches = buffer.match(attributes[attribute]);
    
    if (matches.length > 0 && matches[1] !== undefined) {
        return matches[1];
    } else {
        return "";
    }
}

stdin.addListener("data", function (chunk) {

    var chunks = chunk.toString(),
        events = [],
        i,j;

    if (chunks !== undefined) {

        events = chunks.split("# Event");
        events.forEach( function (event, index, array) {

            var eventType = readAttribute("eventType", event);
            
            if (eventType !== "") {
                sys.puts(eventType);
            } 
        });
    }
});

stdin.addListener("end", function () {
  sys.puts("end");
});