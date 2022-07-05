
const exemplo = 'exemplo mais loco do mundo'

 const loadData = async() =>{
   const response = await fetch('http://localhost:3001')

   console.log('resposta do sv', await response.json()) 
  }
  loadData()

fetch('http://localhost:3001').then((response) =>{
 console.log('isso deu certo: ', response)
}).catch((error) =>{
  console.log('isso deu pau:', error)
}).finally(() =>{
  console.log('requisição finalizou')
})
