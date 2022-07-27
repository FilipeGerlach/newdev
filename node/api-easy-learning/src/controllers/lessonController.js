const database = require('../databases/knex')
const fieldValidator = require('../utils/fieldValidator')

exports.createLesson = async(request, response)=>{
  
  try {
    

    const  invalidFields = fieldValidator(
      request.body, ['title', 'description', 'videoId', 'instructorId', 'courseId']
    )
    if(invalidFields.length || !Object.keys(request.body).length){
      return response.status(400).send({
        status: 'invalid request',
        invalidFields
      })
    }
    
    const requiredFields = ['title', 'videoId', 'instructorId', 'courseId']

    const requiredFieldsExist = []
    requiredFields.forEach(requiredField =>{
      if(!request.body[requiredField]){
        requiredFieldsExist.push(requiredField) 
      }
    })


    
    if(requiredFieldsExist.length){
      return response.status(400).send({
        status: 'required fields',
        requiredFields: requiredFieldsExist
      })   
    }

    const [course] = await database.select('*').from('course').where({id: Number(request.body.courseId)})

    if(!course){
      return response.status(404).send({status: `Nenhum curso com o id: ${request.body.courseId} foi encontrado`})
    }

    const [instructor] = await database.select('*').from('instructor').where({id: Number(request.body.instructorId)})
    
    if(!instructor){
      return response.status(404).send({status: `nunhum instrutor com o id: ${request.body.instructorId} foi encontrado`})
    }

    const {title, videoId, description} = request.body

    const [lessonCreateId] = await database.insert({
      title,
      videoId,
      instructorId: "",
      courseId: "", 
      description: description ? description : null
    }).into('lessons')

      const [lessonCreated]= await database.select('*').where({id: lessonCreateId}).from('lessons')


    return response.status(200).send({
      status: 'success'
    })
    
  } catch (error) {
    return response.status(500).send({error:error?.message || e})
  }
}
