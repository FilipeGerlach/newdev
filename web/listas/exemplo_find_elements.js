//buscando elementos dentro da pagina html
//getElementById busca elemento pelo atributo id do elemento
const buttonsendmessege = document.getElementById('buttonsendmessege');
console.log('buttonsendmessege ->', buttonsendmessege);

//querySelectorAll:retorna um arrerio de elementos que ele encontrar.
//buscando pela tag
const inputs = document.querySelectorAll('input');
console.log('input: ', inputs);

//acessando posição do vetor.
console.log('input email ->', inputs[2])

//selector especifico(retorna o primeiro elemento que encontrar).querySelector
const input = document.querySelector('input');
console.log('input-selector: ', input);

//querySelectorAll:retorna um arrerio de elementos que ele encontrar.
// Buscando pelo id
const texto = document.querySelectorAll('#texto');
console.log('texto: ', texto);

//buscando pela classe
const social = document.querySelector('.social');
console.log('social ->', social)










/*const p = document.createElement('p');
p.innerHTML = 'batata'
console.log('p ->', p)
document.getElementById('texto-1').appendChild(p)*/