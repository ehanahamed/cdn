const http = require("http");

http.createServer(
  function (request, response) {
    response.write(request);
    response.end();
  }
).listen(process.env.PORT || 3000);
