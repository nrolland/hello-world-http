//in file  helloworld.js
const http = require('http'); // Loads the http module

console.log('listening on 8081');
http.createServer((request, response) => {

    // 1. Tell the browser everything is OK (Status code 200), and the data is in plain text
    response.writeHead(200, {
        'Content-Type': 'text/plain'
    });

    // 2. Write the announced text to the body of the page
    response.write('Hello, World JS!\n' 
		   + 'request.headers \n' + JSON.stringify(request.headers, null, 4) 
		+ '\nrequest.httpVersion\n'	+ JSON.stringify(request.httpVersion, null, 4)
		+ '\nrequest.method\n' 	+ JSON.stringify(request.method, null, 4)
		+ '\nrequest.rawHeaders\n'	+ JSON.stringify(request.rawHeaders, null, 4)
		+ '\nrequest.rawTrailers\n'	+ JSON.stringify(request.rawTrailers, null, 4)
		+ '\nrequest.statusCode\n'	+ JSON.stringify(request.statusCode, null, 4)
		+ '\nrequest.trailers\n'	+ JSON.stringify(request.trailers, null, 4)
		+ '\nrequest.url\n'	+ JSON.stringify(request.url, null, 4)
    );

    // 3. Tell the server that all of the response headers and body have been sent
    response.end();

}).listen(8081); // 4. Tells the server what port to be on
