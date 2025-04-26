const express = require('express');
const app = express();
const PORT = 3000;

app.get('/', (req, res) => {
  res.send('Hello from Dockerized Node.js App!');
});

app.listen(PORT,'0.0.0.0', () => {
  console.log(`Server running on http://localhost:${PORT}`);
});
