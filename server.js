var http = require('http');

var handleReq = function(request, response) {
  console.log('request for url: ' + request.url);
  response.writeHead(200);
  response.end('$DT Hello World!');
};
var www = http.createServer(handleReq);
www.listen(8080);
