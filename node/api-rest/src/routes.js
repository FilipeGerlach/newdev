const express = require('express')
const app = express()

const indexController = require('./controllers/indexController')
const IndexControllerBooks = require('./controllers/indexControllerBooks')

const authorController = require('./controllers/authorController')
const BooksController = require('./controllers/BooksController')

const routes = express.Router()
//rotas index
routes.get('/', indexController.index)
//rotas authors
routes.get('/authors', authorController.findAll)
routes.post('/authors', authorController.create)
//rotas id authors
routes.get('/authors/:id', authorController.getById)
routes.delete('/authors/:id', authorController.deleteById)
routes.put('/authors/:id', authorController.putById)
routes.patch('/authors/:id', authorController.patchById)

//routes books
routes.get('/', IndexControllerBooks.index)
//rotesBooks
routes.get('/books', BooksController.findAllBooks)
routes.post('/books', BooksController.createBooks)
//por id
routes.get('/books/:id', BooksController.getBooksById)
routes.put('/books/:id', BooksController.putBooksById)
routes.delete('/books/:id', BooksController.deleteBooksById)
routes.patch('/books/:id', BooksController.patchBooksById)



module.exports = routes