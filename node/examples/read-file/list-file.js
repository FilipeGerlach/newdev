const http = require('http')
const URL= require('url')
const users = require('./users.json')


http
  .createServer((request, response) => {
    //responde pro cliente
    const {name, lastname, age} = URL.parse(request.url, true).query
    if(name || lastname || age){
      console.log('query',name, lastname, age)
      
    }

    response.end(JSON.stringify(users))
  })
  .listen(3001, () => {
    console.log('API is running on port 3001')
  })
