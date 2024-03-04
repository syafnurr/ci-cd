import express from 'express';

const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send(`Hello, World! The current time is ${new Date().toLocaleTimeString()}.`);
});

app.get('/api', (req, res) => {
    res.send(`Ini adalah api dengan jam sekarang ${new Date().toLocaleTimeString()}.`);
});

app.get('/dashboard', (req, res) => {
    res.send(`Ini adalah dashboard dengan jam sekarang ${new Date().toLocaleTimeString()}.`);
});

app.get('/admin', (req, res) => {
    res.send(`Ini adalah admin dengan jam sekarang ${new Date().toLocaleTimeString()}.`);
});

app.listen(port, () => {
  console.log(`App listening at http://localhost:${port}`);
});
