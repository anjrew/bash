
const http = require('http');
const queryString = require('querystring');
const chalk = require('chalk');
const fs = require('fs');
const port = 8080;

const server = http.createServer();

server.on('request', (request, response) => {


}).listen(port, () => { console.log(`Running server on ${port}`) });