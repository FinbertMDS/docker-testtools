const http = require('http');
const port = process.env.PORT || 8085;

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  const msg = 'Hello, World from Docker!\nNode website!'
  res.end(msg);
});

server.listen(port, () => {
  console.log(`Server running on http://localhost:${port}/`);
});
