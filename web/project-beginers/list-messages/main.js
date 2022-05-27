const buttonAddMessege = document.getElementById('addButton')


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

  const sessionMessages =
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
  ul.appendChild(li);
}
buttonAddMessege.addEventListener('click', addMessege);
