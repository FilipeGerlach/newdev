programa
{
	inclua biblioteca Matematica --> mat
	
	funcao inicio(){
		//atividade6()
		//atividade7()
		//atividade8()
		//atividade9()
		atividade10()
	}
	funcao atividade6(){
		cadeia sexo
		real altura, pesoideal

		escreva("informe seu gênero(M para masculino e F para feminino): ")
		leia(sexo)

		escreva("digite sua altura: ")
		leia(altura)

		se(sexo == "M"){
			pesoideal = (72.7 * altura) - 58
			escreva("seu peso ideal é: ", pesoideal)
		}senao se(sexo == "F"){
			pesoideal = (62.1 * altura) - 44.7
			escreva("o seu peso ideal é: ", pesoideal)
		}senao{
			escreva("Erro, reinicie o programa e insira uma variável válida")
		}
	}
	funcao atividade7(){
		real peso, altura, imc, imcredondo

		escreva("informe seu peso: ")
		leia(peso)

		escreva("informe sua altura: ")
		leia(altura)

		imc = peso / (altura * altura)
		imcredondo = mat.arredondar(imc, 2)

		se(imc < 18.5){
			escreva("seu IMC está abaixo da média, ele está em: ", imcredondo,", e o mínimo é 18,5")	
		}senao se(imc >=18.5 e imc <= 25){
			escreva("seu IMC está dentro da média, ele está em: ",imcredondo,", e o mínimo é 18,5")
		}senao se(imc >25 e imc <= 30){
			escreva("seu IMC está acima da média, ele está em: ",imcredondo,", e a média esta entre 18,5 e 25")
		}senao se (imc > 30)
			escreva("seu IMC está muito acima da média, ele está em: ",imcredondo,", acima de 30 é considerada obesidade")
		
	}
	funcao atividade8(){
		inteiro n1

		escreva("insira um numero: ")
		leia(n1)

		se(n1 % 2 == 0){
		escreva("seu numero ficou em: ", n1 + 5)
	} senao {
		escreva("seu numero ficou em: ", n1 + 8)
	}	
	}
	funcao atividade9(){
		real distancia, consumo, consumomedio

		escreva("insira a distância percorrida: ")
		leia(distancia)

		escreva("insira o total de gasolina: ")
		leia(consumo)

		consumomedio = distancia / consumo

		escreva("O consumo médio de gasolina é: ", consumomedio)
	}
	funcao atividade10(){
		inteiro compra, pagamento, troco
        
        escreva("Qual o valor do produto?\n")
        leia(compra)
        
        escreva("Quanto você irá pagar?\n")
        leia(pagamento)
        

        
        se(pagamento == compra) {
            escreva("Compra efetuada!") 
        } senao se(pagamento > compra) {
            troco = pagamento - compra
            se (troco == 10) {
                escreva("Compra efetuada, receba seu troco de 1 nota de ", troco, " reais")
            } senao se(troco == 1) {
                escreva("Compra efetuada, receba seu troco de 1 nota de ", troco, " real")
            } senao se(troco == 100) {
                escreva("Compra efetuada, receba seu troco de 1 nota de ", troco, " reais")
            } senao se(troco != 10 e troco != 1 e troco != 100) {
                se(troco%100 == 0) {
                    escreva("Compra efetuada, receba seu troco de ", troco/100, " notas de 100")
                } senao se(troco%10 == 0) {
                    escreva("Compra efetuada, receba seu troco de ", troco/10, " notas de 10")
                } senao se(troco%1 == 0) {
                    escreva("Compra efetuada, receba seu troco de ", troco, " notas de 1")
                }
            }
        }senao se (pagamento < compra){
        escreva("pagamento negado!")
        }
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3243; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */