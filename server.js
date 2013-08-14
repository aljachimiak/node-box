var http = require("http");
console.log("======================================================================================");
console.log("The server has started");
console.log("Visit: localhost:6789 on your host machine's browser to see the 'Hello World!' message.");
console.log("---");
console.log("Use ctr-c to stop the server and return to your command prompt");
console.log("======================================================================================");
http.createServer(function(request, response) {
  response.writeHead(200, {"Content-Type": "text/plain"});
  response.write("Hello World! \nThanks for using node-box!");
  response.end();
}).listen(8888);
