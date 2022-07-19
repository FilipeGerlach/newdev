const express = require('express')


const indexController = require('./controllers/indexController')
const courseController = require('./controllers/courseController')
const instructorController = require('./controllers/instructorController')
const lessonController = require('./controllers/lessonController')
const routes = express.Router()
//pegando o index inicial

const {indexController, lessonController, instructorController, courseController} = require('./controllers')

routes.get('/', indexController.index)

// console.log('chegou')
//pegando os cursos
routes.get('/courses', courseController.findAllCourses)
routes.get('/courses/:id', courseController.getId)

routes.post('/courses', courseController.createCourse)

routes.delete('/courses/:id', courseController.deleteCourse)

routes.put('/courses/:id', courseController.putCourse)
//instructors
routes.get('/instructor', instructorController.findAllInstructor)
routes.get('/instructor/:id', instructorController.getInstructorId)

routes.post('/instructor', instructorController.createInstructor)

routes.delete('/instructor/:id', instructorController.deleteInstructor)

routes.put('/instructor/:id', instructorController.putInstructor)

//lessons
routes.put('/lesson', lessonController.createLesson)


module.exports = routes
