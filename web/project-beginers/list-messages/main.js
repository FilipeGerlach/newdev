const buttonAddMessage = document.getElementById('addButton')
let countRow = 0
let lineEditingInMoment = null

function onClickEdit(lineEditing) {
  lineEditingInMoment = lineEditing
  //forEach é um metodo que percorre todos os indices do arreio
  /*lineEditing.childNodes.forEach((valor,index)=>{
  console.log('valor: ', valor);
  console.log('index: ', index);
  })
  */
  /*const fromValue = lineEditing.childNodes[0].innerHTML
 console.log('from value:', fromValue)
  const tbody = document.getElementById('tbody-messages')
  const toValue = lineEditing.childNodes[1].innerHTML
  console.log('to value:', toValue)
  const messageValue = lineEditing.childNodes[2].innerHTML
  console.log('message value:', messageValue)*/

  //desestruturação de arrays(vetores)
  const [from, to, message] = lineEditing.childNodes

  document.getElementById('from').value = from.innerHTML
  document.getElementById('to').value = to.innerHTML
  document.getElementById('message').value = message.innerHTML

  
}
function onClickRemove(lineToRemove){
 lineToRemove.remove();  
}




function addMessage(event) {
  event.preventDefault()
  const inputFrom = document.getElementById('from')
  const inputTo = document.getElementById('to')
  const textArea = document.getElementById('message')

  if (!inputFrom.value.length) {
    alert('o remetente deve ser informado')
    return
  }
  if (!inputTo.value.length) {
    alert('o destinatario deve ser informado')
    return
  }

  textArea.value = textArea.value.trim()

  if (!textArea.value.length) {
    alert('a mensagem deve ser informado deve ser informado')
    return
  }

  const message = {
    from: inputFrom.value,
    to: inputTo.value,
    message: textArea.value
  }
  console.log('...', message)

  /*  const sessionMessages =
    document.getElementById('section-messages');
    
    // buscamos uma lista não ordenada dentro da seção para validar
    //se tem ou nao uma la dentro se não criamos ela
    
   let ul = sessionMessages.querySelector('ul');
    
    if (!ul){
    //criamos uma lista nãop ordenada
    ul = document.createElement('ul');
    //adiciona dentro da seção
    sessionMessages.appendChild(ul);
  } 

  const li = document.createElement('li');
  li.innerHTML = 
  `De: ${message.from} 
  para: ${message.to} 
  mensagem: ${message.message}`
  ul.appendChild(li);*/

  const tbody = document.getElementById('tbody-messages')

  const tr = document.createElement('tr')

  const tdFrom = document.createElement('td')
  tdFrom.innerHTML = message.from

  const tdTo = document.createElement('td')
  tdTo.innerHTML = message.to

  const tdMessage = document.createElement('td')
  tdMessage.innerHTML = message.message

  tr.appendChild(tdFrom)
  tr.appendChild(tdTo)
  tr.appendChild(tdMessage)

  const tdButtons = document.createElement('td')

  const iconEdit = document.createElement('i')
  iconEdit.setAttribute('class', 'fas fa-edit')
  iconEdit.setAttribute('title', 'editar')
  iconEdit.setAttribute('style', 'cursor:pointer; margin-inline: 1rem')
  tdButtons.appendChild(iconEdit)

  const iconRemove = document.createElement('i')
  iconRemove.setAttribute('class', 'fas fa-trash')
  iconRemove.setAttribute('title', 'remover')
  iconRemove.setAttribute('style', 'cursor:pointer; margin-inline: 1rem')
  tdButtons.appendChild(iconRemove)
  tr.appendChild(tdButtons)

  const iconArrowDown = document.createElement('i')
  iconArrowDown.setAttribute('class', 'fas fa-arrow-down')
  iconArrowDown.setAttribute('title', 'flecha para baixo')
  iconArrowDown.setAttribute('style', 'cursor:pointer; margin-inline: 1rem')
  tdButtons.appendChild(iconArrowDown)
  tr.appendChild(tdButtons)

  const iconArrowUp = document.createElement('i')
  iconArrowUp.setAttribute('class', 'fas fa-arrow-up')
  iconArrowUp.setAttribute('title', 'flecha para cima')
  iconArrowUp.setAttribute('style', 'cursor:pointer; margin-inline: 1rem')
  tdButtons.appendChild(iconArrowUp)
  tr.appendChild(tdButtons)

  //precissamos identificar a linha.

  tr.setAttribute('id', `line${countRow}`)
  countRow += 1
  if(lineEditingInMoment){
    console.log('essa linha já existe', lineEditingInMoment)
    const[fromToUpdate, toToUpdate, messageToUpdate] = lineEditingInMoment.childNodes;

    fromToUpdate.innerHTML = message.from;
    toToUpdate.innerHTML = message.to;
    messageToUpdate.innerHTML = message.message;
    lineEditingInMoment = null
  }else{
    tbody.appendChild(tr)
  }
  iconEdit.setAttribute(
    'onclick',
    `onClickEdit(${tdButtons.parentElement.id});`
  )
  iconRemove.setAttribute(
    'onclick',
    `onClickRemove(${tdButtons.parentElement.id});`
  )
 

  document.getElementById('form-message').reset()
}

buttonAddMessage.addEventListener('click', addMessage)
