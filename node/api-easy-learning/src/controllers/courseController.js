const database = require('../databases/knex')
const fieldValidator = require('../utils/fieldValidator')
exports.findAllCourses = async (request, response) =>{
  try {
    const sql = await database.select('*').from('course');

    return response.status(200).send(sql)
  } catch (error) {
    console.log(error)
    return response.status(500).send({error:error?.message || e})
    
  }
}

exports.getId = async(request, response)=>{
  try {
    const params = request.params
    const [getId] = await database.select('*').from('course').where({id:params.id}).limit(1)

    if(!getId){
      response.status(404).send('não foi encontrado')
    }
    await database.select('*').from('course').where({id:params.id})
    return response.status(200).send(getId)
  } catch (error) {
    return response.status(500).send({error:error?.message || e})
  }
}

exports.createCourse = async(request, response)=>{
  
  try {
    const invalidFields = fieldValidator(request.body, ['title', 'description'])

      if(invalidFields.length){
        return response.status(400).send({
          status: 'invalid request',
          invalidFields
        })
      }
    
    
    const [courseCreatedId] = await database.insert(request.body).into('course');
    
    const [courseCreated] = await database.select('*').from('course').where({ id: courseCreatedId });

    return response.status(200).send({
      status: 'success',
      data: courseCreated
    })

    
  } catch (error) {
    return response.status(500).send({error:error?.message || e})
  }
}
exports.deleteCourse = async(request, response)=>{
  try {
    const params = request.params
    const [excluir] = await database.select('*').from('course').where({id:params.id}).limit(1)

    if(!excluir){
      return response.status(404).send('não encontrado')
    }
    await database.delete({title:excluir.title}).from('course').where({id:excluir.id})
    return response.status(200).send({status:"deletado"})
    
  } catch (error) {
    return response.status(500).send({error:erro?.message || e})
  }
}

exports.putCourse = async(request, response) =>{
  try {
    const params = request.params

    const [previousCourse] = await database.select('*').from('course').where({id:params.id}).limit(1)

    if(!previousCourse){
      return response.status(404).send('não doi encontrado')
    }
    
    await database.update({title:request.body.title, description:request.body.description}).from('course').where({id:previousCourse.id})
    
    return response.status(200).send({status:'registro salvo', data:request.body})
  } catch (error) {
    return response.status(500).send({error:error?.message || e})
  }
}