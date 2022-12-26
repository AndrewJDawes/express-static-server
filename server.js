"use strict";

const express = require("express");

// Constants
const PORT = 80;
const HOST = "0.0.0.0";

// App
const app = express();
// Serve anything in public directory
app.use(express.static('public'))

app.listen(PORT, HOST, () => {
  console.log(`Running on http://${HOST}:${PORT}`);
});
