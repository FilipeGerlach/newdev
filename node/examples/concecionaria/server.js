const http = require('http');
const fs = require('fs');
const path = require('path');


const concecionaria = (request, response) => {
  const url = request.url;

  let file = url === '/' ?'index.html' :request.url;

  const filePath = path.join(__dirname, 'public', file);
  fs.readFile(filePath, (error, content) => {
    if(error){ console.log(error) };
    return response.end(content);
  })
}


const server = http.createServer(concecionaria)

server.listen(3004, () => {
  console.log('esta rodando na porta http/localhost/3004')
})