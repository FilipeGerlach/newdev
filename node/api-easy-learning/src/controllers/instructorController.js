const database = require('../databases/knex')
const fieldValidatorInstructor = require('../utils/fieldValidator')

exports.findAllInstructor = async (request, response) =>{
  try {
    const sql = await database.select('*').from('instructor');

    return response.status(200).send(sql)
  } catch (error) {
    console.log(error)
    return response.status(500).send({error:error?.message || e})
    
  }
}

exports.getInstructorId = async(request, response)=>{
  try {
    const params = request.params
    const [getId] = await database.select('*').from('instructor').where({id:params.id}).limit(1)

    if(!getId){
      response.status(404).send('não foi encontrado')
    }
    await database.select('*').from('instructor').where({id:params.id})
    return response.status(200).send(getId)
  } catch (error) {
    return response.status(500).send({error:error?.message || e})
  }
}

exports.createInstructor = async(request, response)=>{
  
  try {
    const invalidFields = fieldValidatorInstructor(request.body, ['fullName', 'avatarUrl'])

      if(invalidFields.length){
        return response.status(400).send({
          status: 'invalid request',
          invalidFields
        })
      }
    
    
    const [instructorCreatedId] = await database.insert(request.body).into('instructor');
    
    const [instructorCreated] = await database.select('*').from('instructor').where({ id: instructorCreatedId });

    return response.status(200).send({
      status: 'success',
      data: instructorCreated
    })

    
  } catch (error) {
    return response.status(500).send({error:error?.message || e})
  }
}
exports.deleteInstructor = async(request, response)=>{
  try {
    const params = request.params
    const [excluir] = await database.select('*').from('instructor').where({id:params.id}).limit(1)

    if(!excluir){
      return response.status(404).send('não encontrado')
    }
    await database.delete({fullName:excluir.fullName}).from('instructor').where({id:excluir.id})
    return response.status(200).send({status:"deletado"})
    
  } catch (error) {
    return response.status(500).send({error:erro?.message || e})
  }
}

exports.putInstructor = async(request, response) =>{
  try {
    const params = request.params

    const [previousCourse] = await database.select('*').from('instructor').where({id:params.id}).limit(1)

    if(!previousCourse){
      return response.status(404).send('não doi encontrado')
    }
    
    await database.update({fullName:request.body.fullName, avatarUrl:request.body.avatarUrl}).from('instructor').where({id:previousCourse.id})
    
    return response.status(200).send({status:'registro salvo', data:request.body})
  } catch (error) {
    return response.status(500).send({error:error?.message || e})
  }
}