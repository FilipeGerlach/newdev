programa
{
	
	funcao inicio()
	{
	inteiro opcao = 1, incrementoVeiculo = 0, operacoes[200][3], numveiculo = 0, numcarros = 0, soma = 0
	
	
	cadeia veiculo[1000]
		enquanto(opcao != 0){
			escreva("\n------------------------0:saida------------------------------")
			escreva("\n------------------------1:cadastrar veiculo------------------")
			escreva("\n------------------------2:listar veiculos--------------------")
			escreva("\n------------------------3:entrada de produto-----------------")
			escreva("\n------------------------4:saida de produto-------------------")
			escreva("\n------------------------5:consultar saldo do produto---------\n")
			leia(opcao)
			limpa()
			
			escolha(opcao){

			caso 0: 
			escreva("voce encerrou o programa!!!")
			
			pare
			caso 1:
				escreva("digite o nome do veiculo para cadastra-lo: ")
				leia(veiculo[incrementoVeiculo]) 
				incrementoVeiculo++
			pare
			caso 2:
				listaVeiculos(incrementoVeiculo,veiculo)
			pare
			caso 3:
				listaVeiculos(incrementoVeiculo,veiculo)
				escreva("digite o carro que voce ira dar entrada: ")
				leia(numveiculo)

				para(inteiro i=0; i < incrementoVeiculo; i++){
					
					se(numveiculo == i){
						escreva("digite o numero de entradas que teve esse carro: ")
						leia(numcarros)
						
						soma +=numcarros
						
					}se(soma < 200){
						operacoes[i][0] = numcarros
						
						
					}senao{
						escreva("você passou do limite de carros, tente novamente: ")
						soma-=numcarros
						pare
					}
				}
			pare
			caso 4:
			pare
			caso 5:
			pare
			caso contrario: escreva("contrario")
			pare
			}
		}
	}
	funcao listaVeiculos(inteiro numeroTotalDeVeiculosCadastros, cadeia veiculo[]) {
		para(inteiro i=0; i < numeroTotalDeVeiculosCadastros; i++) {
			escreva(i,": ",veiculo[i],"\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1496; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {operacoes, 6, 43, 9}-{veiculo, 9, 8, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */