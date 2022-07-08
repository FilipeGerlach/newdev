exports.findAllBooks = (request, response) => {
  const query = request.query
  console.log('query books', query)
  return response.status(200).send('acessando recurso/books METHOD: GET BOOKS')
}

exports.createBooks = (request, response) =>{
  const query = request.query
  console.log('query books', query)
  return response.status(200).send('acessando recurso /books METHOD: POST BOOKS')
}

exports.getBooksById = (request, response) =>{
  const params = request.params
  console.log('putBooksById', params)
  return response.status(200).send('acessando recurso /books METHOD: GET BOOKS BY ID')
}

exports.deleteBooksById = (request, response) =>{
  const params = request.params
  console.log('deleteBooksById', params)
  return response.status(200).send('acessando recurso /books METHOD: DELETE BOOKS BY ID')
}

exports.patchBooksById = (request,response) =>{
  const params = request.params
  console.log('patchBooksById', params)
  return response.status(200).send('acessando recurso /books METHOD: PATCH BOOKS BY ID')
}

exports.putBooksById = (request,response) => {
  const params = request.params
  console.log('putBooksById', params)
  return response.stauts(200).send('acessando recurso /books METHOD: PUT BOOKS BY ID')
}