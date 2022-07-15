

exports.index = (request, response) =>{
  console.log('API is avaible')
  return response.status(200).send('API is available')
}