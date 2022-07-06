const http = require('http')
const URL = require('url')
const fs = require('fs')
const path = require('path')
let recipe = require('./recipe.json')

const getRecipe = (request,response) =>{
  let {title, ingredient, del} = URL.parse(request.url, true).query;
  
  
  
  if(ingredient){
    ingredient = ingredient.split(',')
  }
  const items = {
    title, ingredient
  }
  if(!title){
   return response.end(JSON.stringify(recipe));
  }
  if(del){
    recipe = recipe.filter(recipe => recipe.title !== title)
  }else{
  recipe.push(items);
  }
  fs.writeFile(
    path.join(__dirname, 'recipe.json'),
    JSON.stringify(recipe, null, 2),
    (error) => {
      if(error) return;
  
      console.log('salvou');
      response.end(JSON.stringify({
        data: items
      }))
    }
  )
}

const server = http.createServer(getRecipe)

server.listen(3000, () => {
  console.log('API listening on http://localhost:3000');
});