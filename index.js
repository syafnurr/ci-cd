import express from 'express';

const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send(`Hello, World! The current time is ${new Date().toLocaleTimeString()}.`);
});

app.listen(port, () => {
  console.log(`App listening at http://localhost:${port}`);
});

// Testing
// Testing2
