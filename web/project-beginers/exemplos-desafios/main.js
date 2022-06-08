let peoples = []

const loadPeoples = () => {
  const itemsJaArmazenados = localStorage.getItem('listaDePessoas')
  return itemsJaArmazenados ? JSON.parse(itemsJaArmazenados) : []
}
function onClickEdit(lineEditing) {
  lineEditingInMoment = lineEditing
 
  const [from, to, message] = lineEditing.childNodes

  document.getElementById('from').value = from.innerHTML
  document.getElementById('to').value = to.innerHTML
  document.getElementById('message').value = message.innerHTML

  
}
function onClickRemove(trRemove){
 trRemove.remove();  
}

const span = () => {
  const span = document.createElement('span')
  const iconEdit = document.createElement('i')
  iconEdit.setAttribute('class', 'fas fa-edit')
  iconEdit.setAttribute('title', 'editar')
  iconEdit.setAttribute('style', 'cursor:pointer; margin-inline: 1rem')
  span.appendChild(iconEdit)

  const iconRemove = document.createElement('i')
  iconRemove.setAttribute('class', 'fas fa-trash')
  iconRemove.setAttribute('title', 'remover')
  iconRemove.setAttribute('style', 'cursor:pointer; margin-inline: 1rem')
  span.appendChild(iconRemove)
  
  return span
}

const listPeoples = () => {
  const peoples = loadPeoples()

  let ul = document.querySelector('ul')
  if (ul) {
    ul.remove()
  }
  
  ul = document.createElement('ul')
  
  peoples.forEach((item, index) => {
    const li = document.createElement('li')
    li.innerHTML = `Nome: ${item.name} Idade: ${item.age}, Altura: ${item.height}`
    li.appendChild(span())
    ul.appendChild(li)
  })
  
  document.getElementById('list-section').appendChild(ul)
}

listPeoples()

const addPeople = event => {
  event.preventDefault()
  const people = {
    name: document.getElementById('name').value,
    age: document.getElementById('age').value,
    height: document.getElementById('height').value
  }
  
  peoples = loadPeoples()
  
  peoples.push(people)
  
  localStorage.setItem('listaDePessoas', JSON.stringify(peoples))
  
  document.querySelector('form').reset()
  listPeoples()
  
}


const botaoDeAdicionar = document.getElementById('btn')
botaoDeAdicionar.addEventListener('click', addPeople)
