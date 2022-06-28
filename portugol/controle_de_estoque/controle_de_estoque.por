programa
{
	
	funcao inicio()
	{
	inteiro opcao = 1 , numerodecarro = 0, incrementoVeiculo = 0, entrada[1000], numcarros = 0, soma = 0, codigo[1000], saida[1000], estoque[1000]
	cadeia veiculos[1000], carro
		

		enquanto(opcao != 0){
			escreva("\n------------------------0:saida------------------------------")//aqui sera o menu onde se a pessoa apertar 1 ela saira.
			escreva("\n------------------------1:cadastrar veiculo------------------")//se apertar 2 ela irá cadastrar um programa.
			escreva("\n------------------------2:listar veiculos---------------------")//se apertar 3 ira listart  os veiculos cadastrados.
			escreva("\n------------------------3:entrada de produto-----------------")//se apertar 4 consulta o saldo do produto.
			escreva("\n------------------------4:saida de produto-------------------")//se apertar 5 ele podera dar uma entrada de produto.
			escreva("\n------------------------5:consultar saldo do produto---------\n")//se apertar 6 ele dara uma saida de produto.
			leia(opcao)
			limpa()
			//aqui so acontecera se a pessoa selecionar o botao 0. ele faz com que o programa feche.
			se(opcao == 0){
				escreva("programa finalizado!!!!")
				pare
			}
			//aqui acontecera se a pessoa quiser cadastrar um veiculo ela apertará 1. 
			se(opcao == 1){
				escreva("cadastre um veiculo: ")
				leia(veiculos[incrementoVeiculo])//aqui faz com que ele percorra o vetor para cadastrar um veiculo.
				//escreva("digite o código do carro: ")
				//leia(codigo[incrementoVeiculo])
				incrementoVeiculo++
				limpa()
			}
			//se ele selecionar o 2 ele ira incrementoVeiculor todos os carros que ja estão cadastrados.
			se(opcao == 2){
				//esse é o para que ele usara para incrementoVeiculor os carros correndo todos os carros possuidos.
				se(incrementoVeiculo == 0){
					escreva("erro nenhum produto encontrado!!!!!")
					pare
				} senao {
					listaVeiculos(incrementoVeiculo,veiculos)
				}
				
			}//se apertar 3 ele ira perguntar qual carro ele dara a entrada, para checar e ver se esse carro esta cadastrado.
			se(opcao == 3){

				listaVeiculos(incrementoVeiculo,veiculos)
				
				
				escreva("qual carro quer dar entrada: ")
				leia(numerodecarro)
				limpa()
				
				para(inteiro i=0; i < 100; i++){//esse para é para ler os vetores de cadastro e ver se o carro que ele falou esta em um deles.
					se(numerodecarro == i){//esse se é para verificar e averigar se possui um carro  parecido com aquele
						escreva("digite o numero de entradas que teve esse carro: ")
						leia(numcarros)
						soma = soma + numcarros//aqui ele adiciona para no futuro verificar se o numero de carros não passo do que o estoque permite.
						entrada[i] =entrada[i] + numcarros//aqui é para adicionar dentro do mesmo numero de vetor que os carros.
						limpa()
						estoque[i] = entrada[i]//aqui é para guardar no estoque para mostrar no final do programa.
					} se(soma>200){//esse se é para verificar se não passou do limite de estoque.
					escreva("\nestoque cheio não cabe mais que 200 carros!!!!!, tente novamente: ")
					estoque[i] = estoque[i] - entrada[i]
					entrada[i] = entrada[i] - numcarros
					
					pare
					}
				}
			}
			se(opcao == 4){
				
				listaVeiculos(incrementoVeiculo,veiculos)
				
				escreva("qual carro quer dar saida: ")
				leia(numerodecarro)
				limpa()
				para(inteiro i=0; i < 100; i++){
					se(numerodecarro == i){
						escreva("digite o numero de saidas que teve esse carro: ")
						leia(numcarros)
						saida[i] = numcarros
						soma -= numcarros
						limpa()
						
					}se(estoque[i] < saida[i]){
						escreva("não tem carros o suficiente aqui!!! ")
						pare
					} se(estoque[i] < saida[i]){
						escreva("\nsaiu mais carros do que entrou, esta errado!!!!!!! tente novamente: ")
						saida[i] = 0
					pare
					}senao{
						estoque[i] = estoque[i] - saida[i]
					}
					
				}
				
			}
			se(opcao == 5){
					escreva("codigo   ||   carro  ||  entrada || saida   || estoque\n")
				para(inteiro i=0; i < incrementoVeiculo; i++){
					escreva("   ",i,"     ||   ",veiculos[i],"      ||   ", entrada[i],"      ||   ", saida[i],"     ||    ", estoque[i], "\n")
				}
			}
		}
	}

	funcao listaVeiculos(inteiro numeroTotalDeVeiculosCadastros, cadeia veiculos[]) {
		para(inteiro i=0; i < numeroTotalDeVeiculosCadastros; i++) {
			escreva(i,": ",veiculos[i],"\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3589; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */