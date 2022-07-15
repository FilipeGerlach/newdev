const express = require('express')


const indexController = require('./controllers/indexController')
const courseController = require('./controllers/courseController')

const routes = express.Router()
//pegando o index inicial
routes.get('/', indexController.index)
// console.log('chegou')
//pegando os cursos
routes.get('/courses', courseController.findAllCourses)
routes.get('/courses/:id', courseController.getId)

routes.post('/courses', courseController.createCourse)

routes.delete('/courses/:id', courseController.deleteCourse)

routes.put('/courses/:id', courseController.putCourse)

module.exports = routes
