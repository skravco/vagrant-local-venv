// Import necessary modules
const express = require('express');
const os = require('os');

// Initialize the Express app
const app = express();
const PORT = 3000;

// Define the root route
app.get('/', (req, res) => {
  const hostname = os.hostname();
  res.send(`instance running on ${hostname}\n`);
});

// Start the server
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});

