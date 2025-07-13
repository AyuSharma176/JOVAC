const net = require('net');
const PORT = 5000;

let clients = [];

const server = net.createServer((socket) => {
  const clientAddress = `${socket.remoteAddress}:${socket.remotePort}`;
  console.log(`Client connected: ${clientAddress}`);
  clients.push(socket);

  socket.on('data', (data) => {
    const message = data.toString().trim();
    console.log(`Message from ${clientAddress}: ${message}`);

    clients.forEach((client) => {
      if (client !== socket) {
        client.write(`Message from ${clientAddress}: ${message}\n`);
      }
    });
  });

  socket.on('end', () => {
    console.log(`Client disconnected: ${clientAddress}`);
    clients = clients.filter((client) => client !== socket);
  });

  socket.on('error', (err) => {
    console.error(`Error with client ${clientAddress}: ${err.message}`);
  });
});

server.listen(PORT, () => {
  console.log(`Server started on port ${PORT}`);
});
