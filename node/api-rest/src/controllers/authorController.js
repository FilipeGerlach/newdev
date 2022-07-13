const database = require('../databases/knex')
const logger = require('../utils/logger')

exports.findAll = async(request, response) =>{
  try {
    const sql = await database.select('*').from('authors');

    console.log('sql ->', sqdawdwal)
    return response.status(200).send(sql)
  } catch (error) {
    logger(error.message)
    return response.status(500).send({error: error?.message || e})
  }
}

exports.create = async(request, response) =>{
  try {
    await database('authors').insert(request.body)
    return response.status(200).send({status:"success"})
  } catch (error) {
    logger(error.message)
    return response.status(500).send({error:error?.message || e})
  }
}

exports.getById = async(request, response) =>{
  try {
    const params = request.params
    const[getId] = await database.select('*').from('authors').where({id:params.id}).limit(1)
    
    if(!getId){
      response.status(404).send('o registro não foi encontrado')
    }
    console.log('getId', getId)
    await database.select('*').from('authors').where({id:params.id})

    return response.status(200).send()
  } catch (error) {
    logger(error.message)
    return response.status(500).send({error: error?.message || e})
  }
}

exports.deleteById = async(request, response) =>{
  try {
    const params = request.params
    const [excluir] = await database.select('*').from('authors').where({id:params.id}).limit(1)

    if(!excluir){
      return response.status(404).send('o registro não foi encontrado')
    }
    console.log('excluir', excluir)
    await database.delete({name:excluir.name}).from('authors').where({id:excluir.id})
    return response.status(200).send('foi excluido com sucesso')
  } catch (error) {
    logger(error.message)
    return response.status(500).send({error: error?.message || e})
  }
}

exports.putById = async(request, response) =>{
 try {
  const params = request.params
  // precissamos buscar no bancpo de dados o possivel registro
  const [previousAuthor] = await database.select('*').from('authors').where({id:params.id}).limit(1)         //.where('id', params.id)
  //se não existir eu precisso informa r o client que não foi encontrado
  if(!previousAuthor){
    return response.status(404).send(`O registro com id ${params.id} não foi encontrado`)
  }
  const nextAuthor = request.body
  console.log('author update ==', previousAuthor)
  console.log('author update ==', nextAuthor)

  await database.update({name:nextAuthor.name}).from('authors').where({id:previousAuthor.id})
  //capturar o valor do body o qual o cliente quer atualizar 
  // e atualizar a informação no banco de dados

  //avisar o cliente que atualizamos o registro e retornar o registro atualizado


  return response.status(200).send({status:'registro salvo com secesso', data: nextAuthor})
 } catch (error) { //tratamento de exeção, trata os erros que ocorrem.
  logger(error.message)
  return response.status(500).send({error: error?.message || e})
 }
}

