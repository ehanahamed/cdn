const http = require("http");
http.createServer(
  function (request, response) {
    console.log("wow");
    response.write("wow");
    response.end();
  }
).listen(process.env.PORT || 3000);

