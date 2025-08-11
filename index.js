const express = require('express');
require('dotenv').config(); // 👈 Load env variables

const app = express();
const port = process.env.PORT || 9000;
const message = process.env.CUSTOM_MESSAGE || 'Hello World!';

app.get('/', (req, res) => {
    res.send(`<h1>${message}</h1>`);
});

app.listen(port, '0.0.0.0', () => {
    console.log(`🚀 Server running on port 9000`);
});

