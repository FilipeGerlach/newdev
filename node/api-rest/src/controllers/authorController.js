const database = require('../databases/knex')

exports.findAll = async(request, response) =>{
  try {
    const sql = await database.select('*').from('authors');

    console.log('sql ->', sql)
    return response.status(200).send(sql)
  } catch (error) {
    return response.status(500).send({error: error?.message || e})
  }
}

exports.create = async(request, response) =>{
  try {
    await database('authors').insert(request.body)
    return response.status(200).send({status:"success"})
  } catch (error) {
    return response.status(500).send({error:error?.message || e})
  }
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