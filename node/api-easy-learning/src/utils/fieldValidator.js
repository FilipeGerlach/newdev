const fieldValidator = (body = {}, validFields = []) =>{
  const attrs = Object.keys(body)

  const invalidFields = []

  attrs.forEach(attr =>{
    console.log('percorredo attrs', attr)
    if(!validFields.includes(attr)){
      invalidFields.push(attr)
    }
  })
  return invalidFields
}

module.exports = fieldValidator

const fieldValidatorInstructor = (body = {}, validFields = []) =>{
  const attrs = Object.keys(body)

  const invalidFields = []

  attrs.forEach(attr =>{
    console.log('percorredo attrs', attr)
    if(!validFields.includes(attr)){
      invalidFields.push(attr)
    }
  })
  return invalidFields
}

module.exports = fieldValidatorInstructor