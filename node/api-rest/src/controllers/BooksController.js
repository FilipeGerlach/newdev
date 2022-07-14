const database = require("../databases/knex")
const logger = require('../utils/logger')

exports.findAllBooks = async(request, response) => {
  try {
    const sql = await database.select(
      ['books.id', 'books.book', 'authors.name as author Name']
    ).from('books').innerJoin('authors', 'authors.id', 'books.authorId')

      sql.forEach(authors =>{
        console.log('-->', authors['author Name'])
        
      })
    console.log('sql', sql)
    return response.status(200).send(sql)
  } catch (error) {
    logger(error.message)
    return response.status(500).send({error: error?.message || e})
  }
}

exports.createBooks = async(request, response) =>{
  try {
    await database('books').insert(request.body)
  
    return response.status(200).send({status:'funcionou'})
  } catch (error) {
    logger(error.message)
    return response.status(500).send({error: error?.message || e})
  }
}

exports.getBooksById = async(request, response) =>{
  try {
    const params = request.params
    const [getIdBooks] = await database.select('*').from('books').where({id:params.id}).limit(1)

    if(!getIdBooks){
      response.status(404).send('o registro não foi encontrado')
    }
    await database.select('*').from('books').where({id:params.id})

    return response.status(200).send(getIdBooks)
  } catch (error) {
    logger(error.message)
    return response.status(500).send({errpr: error?.message || e})
  }
}

exports.deleteBooksById = async(request, response) =>{
  try {
    const params = request.params
    const[deletebooks] = await database.select('*').from('books').where({id:params.id}).limit(1)

    if(!deletebooks){
      return response.status(404).send('recurso não encontrado')
    }
    console.log('excluir', deletebooks)
    await database.delete({book:deletebooks.book}).from('books').where({id:deletebooks.id})


  return response.status(200).send('foi excluido!!')
  } catch (error) {
    logger(error.message)
    return response.status(500).send({error: error?.message || e})
  }
}


exports.putBooksById = async(request,response) => {
  try {
    const params = request.params
    
    const [putBooks] = await database.select('*').from('books').where({id:params.id}).limit(1)

    if(!putBooks){
      return response.status(404).send('não encontrado')
    }
    const newBook = request.body
    await database.update({book:newBook.book}).from('books').where({id:putBooks.id})
    return response.status(200).send({status:'registro salvo com secesso', data: request.body})
  } catch (error) {
    logger(error.message)
    return response.status(500).send({error: error?.message || e})
  }
}