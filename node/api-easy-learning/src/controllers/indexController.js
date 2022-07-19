const knex =  require('../databases/knex')

exports.index = async(request, response) =>{
  try {
    console.log('cheofhsdoaihaosg')
    await knex.select('*').from('knex_migrations')
    console.log('API is avaible')
    return response.status(200).send('API is available')
  } catch (error) {
    return response.status(500).send(error.message)
  }
}