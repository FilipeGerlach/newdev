const buttonSendMessege = document.getElementById('buttonsendmessege');

//objeto é a instancia de uma classe.
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
  if(messages.length < 3){
  messages.push(message);
  } else{
    //chama o alert do browser
    alert('o console esta cheio');
  }

  //pegando o formulario e utilizando um metodo do form
  document.getElementById('formu').reset();
  console.log('...', messages);
}

buttonSendMessege.addEventListener('click', addMessage);


// N veiculos formam uma classe.
//uma forma de identificar uma classe é pela letra maiuscula no inicio.
/*function Carro (cor, marca, modelo, ano){
  return{
  cor,
  marca,
  modelo,
  ano
  }
}

const carro1= Carro('vermelho', 'volks', 'gol', 2010);
const carro2= Carro('verde', 'volks', 'fusca', 2020);
const carro3= Carro('amarelo', 'volks', 'bola', 2021);
const carro4= Carro('azul', 'volks', 'saveiro', 2010);


console.log('carro ->', carro1)
console.log('carro ->', carro2)
console.log('carro ->', carro3)
console.log('carro ->', carro4)

function Pessoa(nome, sobrenome, idade) {
  return{
    nome, sobrenome, idade
  }
}
const pessoa1 = Pessoa('filipe', 'gerlach', 16)
const pessoa2 = Pessoa('erick', 'ferreita', 16)
const pessoa3 = Pessoa('matheus', 'silva', 15)*/
