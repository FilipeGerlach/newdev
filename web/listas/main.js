const buttonSendMessege = document.getElementById('buttonsendmessege');


const messages = [];

function addMessage(event) {
  event.preventDefault();//desabilita a função padrao do elemento
  const inputName = document.getElementById('name');
  const inputEmail = document.getElementById('email');
  const inputMessage = document.getElementById('mensagem');
  
  
  const message = {
    name: inputName.value,
    email:inputEmail.value,
    message:inputMessage.value,
  }

  messages.push(message);

  document.getElementById('formu').reset();
  console.log('...', message);
  console.log('...', messages);
}

buttonSendMessege.addEventListener('click', addMessage);

