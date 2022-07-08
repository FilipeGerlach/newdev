exports.findAll = (request, response) =>{
  const query = request.query
  console.log('query authors', query)
  return response.status(200).send('acessando recurso /authors METHOD: GET')
}

exports.create = (request, response) =>{
  console.log('recebendo dados', request.body)
  return response.status(200).send('acessando recurso /authors METHOD: POST')
}

exports.getById = (request, response) =>{
  const params = request.params
  console.log('query authors', params)
  return response.status(200).send(`acessando recurso /authors METHOD: GET BY ID ${params.id}`)
}

exports.deleteById = (request, response) =>{
  const params = request.params
  console.log('query authors', params)
  return response.status(200).send(`acessando recurso /authors METHOD: DELETE BY ID ${params.id}`)
}

exports.putById = (request, response) =>{
  const params = request.params
  console.log('query authors', params)
  return response.status(200).send(`acessando recurso /authors METHOD: PUT BY ID ${params.id}`)
}

exports.patchById = (request, response) =>{
  const params = request.params
  console.log('query authors', params)
  return response.status(200).send(`acessando recurso /authors METHOD: PATCH BY ID ${params.id}`)
}