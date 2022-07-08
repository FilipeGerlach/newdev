exports.index = (request, response) => {
  const query = request.query
  console.log('query books', query)
  return response.status(200).send('acessando recurso/books METHOD: GET BOOKS')
}