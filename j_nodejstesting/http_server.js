var sys = require("sys"),
newHTTP = require("http");
newHTTP.createServer(function(request, response)
{
	console.log("I got kicked");
	response.writeHeader(200, {"Content-Type": "text/plain"});
	response.write("Hello World");
	response.end();
}).listen(8080);//createServer
console.log("Server running on 8080");
