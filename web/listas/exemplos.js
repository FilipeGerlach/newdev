// javascript é uma linguagem de programação

// POO programação orientada à objetos
// aatributos e metodos (funçoes)

//exemplo de atributos: cor, largura, altura, etc.
//exemplos de métodos/funções:frear, acelerar, virarADireita

// A convenção de declaração de variavel deve ser seguida:

// variavel NÃO PODE iniciar com numeros

//variavel NÃo PODE iniciar com caracteres especiais(*, &, %)

// variavel NÃO PODE iniciar com caixa ALTA: exemplo errado:Banana
// exemplo correto: banana

// variavel não pode ter acento

// variaveis devem possuir um valor semantico(FAZER SENTIDO)
// exemplo ruim: banana, a, b, c, n1, n2
// exemplo bom: numeroParcelas, nomeUsuario

// por convenção é possivel declarar constantes e que possuem escopo global de caixa alta, somente 
// nesses casos
const NUMERO = 2;

//funções devem seguir as mesmas convenções as mesmas devem ter valor semantico

/*   exemplos    */ 

let nomeVariavel = 1
let numeroParcelas = 200;

//primeiro metodo de criar uma função, atribui-la a uma variavel
let somaValores = function(){
  console.log('somando valores');

}

// chamar/invocar/conjurar/acionar
somaValores();

// segundo método named function 
function subtraiValores(){
  console.log('subtrai');
}
subtraiValores();

// terceiro método 
const carro = {
  cor:'vermelho',
  andar: function(){
    console.log('andando')
  }

}

carro.andar();

//qurto metodo arrow functions
const multiplicaValores = () =>{
  console.log('multiplicaValores', multiplicaValores);
}

multiplicaValores();
