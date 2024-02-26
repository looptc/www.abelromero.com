const http = require('http');

const PORT = 3000;
const REDIRECT_PORT = 443;

const server = http.createServer((req, res) => {
  // Redireccionar a HTTPS
  const redirectUrl = `https://www.${req.headers.host}${req.url}`;
  res.writeHead(301, { 'Location': redirectUrl });
  res.end();
});

server.listen(PORT, () => {
  console.log(`Servidor HTTP escuchando en el puerto ${PORT}`);
});
