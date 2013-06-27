// Node.js helloworld!

// require the http module
var http = require('http');

// init the server
http.createServer( function ( req, res ) {

  res.writeHead(200, { 'Content-Type': 'text/plain'});

  res.end('Hello World!');

}).listen(3000, '127.0.0.1');

console.log('Hello World Running on localhost:3000');
