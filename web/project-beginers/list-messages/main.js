const buttonAddMessege = document.getElementById('addButton')
let countRow = 0;


function onClickEdit(idRecord) {
  console.log('Chamou a função editar', idRecord)
}

function addMessege(event) {
  event.preventDefault();
  const inputFrom = document.getElementById('from');
  const inputTo = document.getElementById('to');
  const textArea = document.getElementById('message');

  if (!inputFrom.value.length){
    alert('o remetente deve ser informado')
    return;
  }
  if (!inputTo.value.length){
    alert('o destinatario deve ser informado')
    return;
  }

  textArea.value = textArea.value.trim();

  if (!textArea.value.length){
    alert('a mensagem deve ser informado deve ser informado')
    return;
  }


  const message = {
    from: inputFrom.value,
    to: inputTo.value,
    message: textArea.value,
  }
  console.log('...', message);

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
  document.getElementById('form-message').reset();

  const li = document.createElement('li');
  li.innerHTML = 
  `De: ${message.from} 
  para: ${message.to} 
  mensagem: ${message.message}`
  ul.appendChild(li);*/


const tbody= document.getElementById('tbody-messages')

const tr = document.createElement('tr');

const tdFrom = document.createElement('td');
tdFrom.innerHTML = message.from;

const tdTo = document.createElement('td');
tdTo.innerHTML = message.to;

const tdMessage = document.createElement('td');
tdMessage.innerHTML = message.Message;

tr.appendChild(tdFrom);
tr.appendChild(tdTo);
tr.appendChild(tdMessage);

const tdButtons = document.createElement('td');

const onClickEdit = function () {
  console.log('Chamou afunção editar')
}

const iconEdit = document.createElement('i');
iconEdit.setAttribute('class', 'fas fa-edit');
iconEdit.setAttribute('style', 'cursor:pointer');
tdButtons.appendChild(iconEdit);


const iconRemove = document.createElement('i');
iconRemove.setAttribute('class', 'fas fa-trash');
iconRemove.setAttribute('style', 'cursor:pointer');
tdButtons.appendChild(iconRemove);
tr.appendChild(tdButtons);



//precissamos identificar a linha.

tr.setAttribute('id', countRow);
countRow += 1;

tbody.appendChild(tr);
iconEdit.setAttribute('onclick', `onClickEdit(${tdButtons.parentElement.id});`)


}
buttonAddMessege.addEventListener('click', addMessege);
