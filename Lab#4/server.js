var express = require('express');
var app = express();
const PORT = 8080;

app.use(express.static(__dirname + '/HTML'));

app.get('/', function (req, res) {
   res.sendFile(__dirname + "/HTML/main.html");
});

var server = app.listen(PORT);
console.log("Server running at http://localhost:%s Ctrl+C to stop", PORT);
