programa
{
	
	funcao inicio()
	{
	//exe_01()
	//exe_02()
	//exe_03()
	//exe_04()
	//exe_05()
	//exe_06()
	//exe_07()
	//exe_08()
	exe_09()
	//exe_10()
	}
	funcao exe_01(){
		real dinheiro, total = 0
        cadeia clientes

        para(inteiro i = 1; i < 6; i++) {
            escreva("Qual foi o faturamento a loja no mês?\n")
            leia(dinheiro)

            total = total + dinheiro

            se(i == 5){
                

                se(total > 54000) {
                    escreva("Superamos o faturamento em R$:", total-54000,"\n")
                } senao se(total < 54000) {
                    escreva("Ficamos inferiores em relação ao faturamento, tivemos défict em R$: ", 54000-total,"\n")
                } senao se(total == 54000){
                    escreva("Empatamos com a loja rival\n")
                }
            }
		}
	}
	funcao exe_02(){
		inteiro contador = 500
		real dinheiro, valor = 0.0

		escreva("digite o valor da compra:")
		leia(dinheiro)
		valor = dinheiro

		enquanto(dinheiro >= contador){
		valor = valor * 0.99
		contador = contador + 100
		}
		contador = contador / 100 - 5
		escreva("\no valor da sua compra sem desconto é: ", dinheiro)
		escreva("\na porcentagem da sua compra é: ", contador, "%")
		escreva("\no valor da sua compra com desconto é: ", valor)
	}
	funcao exe_03(){
		real preco = 5.0, quantidade = 120.0, total

		
		enquanto(preco >= 1){
		quantidade = quantidade + 26
		preco = preco - 0.5

			total = preco * quantidade - 200
			escreva("\n ingressos ", quantidade," preço: ", preco," total: ", total)
		}
	}
	funcao exe_04(){
		inteiro prazo, contador = 0
		real avista, total = 0.0, totalv = 0.0, totalp = 0.0
		cadeia pa

		enquanto(contador <= 4){
		escreva("digite a sua forma de pagamento(sendo V para a vista e P para aparcelado): ")
		leia(pa)

		

		se(pa == "V"){
		
		escreva("digite quanto ira pagar: ")
		leia(avista)
		total = total + avista
		totalv += avista
		}senao se (pa == "P"){
		escreva("digite quanto ira pagar: ")
		leia(avista)
		total = total + avista * 1.1
		totalp += avista * 1.1 
		}
		contador++
		}
		escreva("o total de suas compras foi: ", total)
		escreva("\no total de suas compras a vista foi: ", totalv)
		escreva("\no total de suas compras a prazo foi: ", totalp)
	}
	funcao exe_05(){
		inteiro n1, n2, n3, quantidade = 0
				escreva("escreva um numero: ")
				leia(n1)
				escreva("escreva um numero: ")
				leia(n2)
				escreva("escreva um numero: ")
				leia(n3)

				se(n1 >= 30 e n1 <= 90){
					escreva("essse numero esta entre 30 e 90: ", n1)
					quantidade = quantidade + 1
				} se(n2 >= 30 e n2 <= 90){
					escreva("\nessse numero esta entre 30 e 90: ", n2)
					quantidade = quantidade + 1
				}se(n3 >= 30 e n3 <= 90){
					escreva("\nessse numero esta entre 30 e 90: ", n3)
					quantidade = quantidade + 1
				}
				escreva("\nentre esses numeros: ", quantidade," estão entre 30 e 90.")
	}
	funcao exe_06(){
		inteiro idades, quantidade = 0
		real total = 0.0

		faca{
			escreva("\nInsira uma idade: ")
			leia(idades)

			se(idades != 0){
			total = total + idades
			quantidade++
			}
		}enquanto (idades != 0)
		
		escreva("A média de idades é: \n",total/quantidade," anos")
	}
	funcao exe_07(){
		inteiro mult, numero, tabuada = 0

		escreva("digite um numero: ")
		leia(numero)

			enquanto(tabuada <= 10){

			mult= numero * tabuada
			escreva("\nA tabuada do seu numero é: ", mult)
			tabuada++
			}
	}
	funcao exe_08(){
		inteiro idade, bebe = 0, crianca = 0, adulto = 0, terceiraidade = 0, idoso = 0

    		para(inteiro i = 0; i < 10; i++) {
    			escreva("\nInsira a idade: ")
    			leia(idade)

    			se(idade <= 15) {
    				bebe++
    			} senao se(idade > 15 e idade <= 30) {
    				crianca++
    			} senao se(idade > 30 e idade <= 45) {
    				adulto++
    			} senao se(idade > 45 e idade <= 60) {
    				terceiraidade++
    			} senao se(idade > 60) {
    				idoso++
    			}
    		}
    		
    		escreva("Temos ",bebe," pessoas em até 15 anos\n")
    		escreva("Temos ",crianca," pessoas acima de 15 anos e até 30 anos\n")
    		escreva("Temos ",adulto," pessoas acima de 30 anos e até 45 anos\n")
    		escreva("Temos ",terceiraidade," pessoas acima de 45 anos e até 60 anos\n")
    		escreva("Temos ",idoso," pessoas acima de 60 anos\n")

    		escreva((bebe*100)/10,"% das pessoas informadas tem 15 anos ou menos\n")
    		escreva((idoso*100)/10,"% das pessoas informadas tem mais de 60\n")
	}
	funcao exe_09(){
		cadeia conta = "nada" 
		real n1, n2, resultado

		enquanto(conta != "sair"){
			escreva("\ndigite a operação que você quer: ")
			leia(conta)

			

			se(conta == "+"){
				escreva("digite dois numeros: ")
				leia(n1, n2)
				resultado = n1 + n2
				escreva("o resultado da sua conta é: ", resultado)
				
			}senao se(conta == "-"){
				escreva("digite dois numeros: ")
				leia(n1, n2)
				resultado = n1 - n2
				escreva("o resultado da sua conta é: ", resultado)
				
			}senao se(conta == "/"){
				escreva("digite dois numeros: ")
				leia(n1, n2)
				resultado = n1 / n2
				escreva("o resultado da sua conta é: ", resultado)
				
			}senao se(conta == "*"){
				escreva("digite dois numeros: ")
				leia(n1, n2)
				resultado = n1 * n2
				escreva("o resultado da sua conta é: ", resultado)
				
			}senao se (conta == "sair")
			escreva ("você encerrou o programa!!")
		}
	}
	funcao exe_10(){
		inteiro n1 = 0

		enquanto(n1 >= 0 e n1 % 2 == 0){
			escreva("digite um numero: ")
			leia(n1)
		}
		escreva("esse numero não é par ou não é possitivo!!")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 130; 
 * @DOBRAMENTO-CODIGO = [16, 39, 56, 68, 97, 118, 134, 147, 214];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */