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
		//exe_09()
		exe_10()
	}
	funcao exe_01(){
		inteiro numeros[5] , multi, primos[5]

		para(inteiro i=0; i < 5; i++){
			escreva("informe um numero: ")
			leia(numeros[i])

		}
			para(inteiro i=0; i < 5; i++){
				se(numeros[i] == 2 ou numeros[i] != 1 e numeros[i] % 2 != 0 e numeros[i] % 3 != 0 e numeros[i] % 4 != 0 e numeros[i] % 5 != 0 e numeros[i] % 6 != 0 e numeros[i] % 7 != 0 e numeros[i] % 8 != 0 e numeros[i] % 9 != 0){
					escreva("...", numeros[i])	
				}
				
			}
	}
	funcao exe_02(){
		inteiro numero[8], resultado = 0, posicao = 0

		para(inteiro i=0; i < 8; i++){
			escreva("\ndigite um numero: ")
			leia(numero[i])

			se(numero[i] > resultado){
				resultado = numero[i]
				posicao = i
			}
		}
		escreva("\nesse é o maior numero: ", resultado)
		escreva("\nele esta na posição: ", posicao)
	}
	funcao exe_03(){
		inteiro numero[10], soma = 0
		real multi = 1.0

			para(inteiro i=0; i < 10; i++){
			escreva("digite um numero: ")
			leia(numero[i])

				se(numero[i] % 2 == 0){
					multi = numero[i] * multi
				
				}senao se(numero[i] % 2 != 0){
				 	soma = numero[i] + soma
				}
			}
			escreva(" a multiplicação dos seus numeros pares é: ", multi)
			escreva(" a soma dos seus numeros impares é: ", soma)
	}
	funcao exe_04(){
		inteiro numero[5], invertido[5]

			para(inteiro i=0; i < 5; i++){
				escreva("digite um numero: ")
				leia(numero[i])
			}
			invertido[0] = numero[4]
			invertido[1] = numero[3]
			invertido[2] = numero[2]
			invertido[3] = numero[1]
			invertido[4] = numero[0]
			escreva("os seus numeros invertidos são: ")
				para(inteiro o=0; o < 5; o++){

					escreva(invertido[o], ", ")
				}
	}
	funcao exe_05(){
		inteiro num[10], divisor

		para(inteiro i=0; i < 10; i++){
			escreva("\nInsira um número: ") 
			leia(num[i])
		}

		escreva("\nInforme um divisor: ")
		leia(divisor)

		para(inteiro i=0; i < 10; i++){
			se(num[i] % divisor == 0) {
				escreva("\n",num[i]," é divisível por ",divisor)
			}
		}
	}
	funcao exe_06(){
		inteiro num[5], soma = 0

		para(inteiro i=0; i < 5; i++){
			escreva("\nInsira um número: ") 
			leia(num[i])
			soma = num[i] + soma
		}
		escreva("\na soma de seus numeros é: ", soma)
		
		para(inteiro i=0; i < 5; i++){
			escreva("\nos seus numeros são: ", num[i])
			
			}
	}
	funcao exe_07(){
		cadeia nomes[5], invertido[5]

			para(inteiro i=0; i < 5; i++){
				escreva("digite um numero: ")
				leia(nomes[i])
			}
			invertido[0] = nomes[4]
			invertido[1] = nomes[3]
			invertido[2] = nomes[2]
			invertido[3] = nomes[1]
			invertido[4] = nomes[0]

				escreva("\nos seus nomes são: ")
			para(inteiro i=0; i < 5; i++){
				escreva(", ",nomes[i])
			}
			
			escreva("\nos seus nomes invertidos são: ")
				para(inteiro o=0; o < 5; o++){

					escreva(invertido[o], ", ")
				}
	}
	funcao exe_08(){
		cadeia meses[12]
		inteiro mes = 1

		meses[0] = "janeiro"
		meses[1] = "fevereiro"
		meses[2] = "março"
		meses[3] = "abril"
		meses[4] = "maio"
		meses[5] = "junho"
		meses[6] = "julho"
		meses[7] = "agosto"
		meses[8] = "setembro"
		meses[9] = "outubro"
		meses[10] = "novembro"
		meses[11] = "dezembro"

			para(inteiro i=0; i < 100000; i++){
				escreva("\ndigite um mes: ")
				leia(mes)
				

				se(mes != 0 ou mes > 12){
					mes--
				escreva("\nseu mês é: ", meses[mes])
				}senao{
					escreva("\ninvalido!!!")
					pare
				}
			}
	}
	funcao exe_09(){
		inteiro num[50], soma = 1

		para(inteiro i=0; i < 50; i++){
		num[i] = num[i] + soma
		soma++
		escreva("\n",num[i])
		}
	}
	funcao exe_10(){
		inteiro num[10]

		para(inteiro i=0; i < 10; i++){
			escreva("\nInsira um número: ")
			leia(num[i])

			num[i] = num[i]*num[i]
		}

		para(inteiro i=0; i < 10; i++){
			escreva("\n",i,") ",num[i])
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3656; 
 * @DOBRAMENTO-CODIGO = [16, 31, 46, 64, 82, 99, 114, 138, 169, 178];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */