import express from 'express';

hfnkjnfkjconst app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send(`Hello, World! The current time is ${new Date().toLocaleTimeString()}.`);
});

app.get('/testing', (req, res) => {
    res.send(`Hello, Testing! The current time is ${new Date().toLocaleTimeString()}.`);
  });

app.get('/youtube', (req, res) => {
res.send(`Hello, Testing! The current time is ${new Date().toLocaleTimeString()}.`);
});

app.listen(port, () => {
  console.log(`App listening at http://localhost:${port}`);
});

// Testing
// Testing2
