programa
{
	
	funcao inicio()
	{
		inteiro numerospares[10], numerosimpares[10], numerodigitado = 0, contapar=0, contaimpar=0

		enquanto(contapar + contaimpar < 10){
			escreva("digite um numero: ")
			leia(numerodigitado)

			se(numerodigitado % 2 == 0){
			numerospares[contapar] = numerodigitado
			contapar++
			}senao{
				numerosimpares[contaimpar] = numerodigitado
				contaimpar++
			}
		}
		listapares(numerospares, contapar)
		listaimpares(numerosimpares, contaimpar)
		fusao(numerospares, numerosimpares, contapar, contaimpar)
	}
	funcao listapares(inteiro numerospares[], inteiro contapar){
		inteiro copia = 0
		escreva("numeros pares : \n")
		para(inteiro j=0; j < contapar; j++){
			para(inteiro i=0; i < contapar - 1; i++) {

				se(numerospares[i]< numerospares[i+1]){
				copia = numerospares[i]
				numerospares[i] = numerospares[i+1]
				numerospares[i+1]= copia
				
				}
			}
		}
		para(inteiro i=0; i < contapar ; i++){
			escreva(numerospares[i], "\n")
		}
	}
	funcao listaimpares(inteiro numerosimpares[], inteiro contaimpar){
		inteiro copia = 0
		
		para(inteiro j=0; j < contaimpar; j++){
			para(inteiro i=0; i < contaimpar - 1; i++) {

				se(numerosimpares[i]> numerosimpares[i+1]){
				copia = numerosimpares[i]
				numerosimpares[i] = numerosimpares[i+1]
				numerosimpares[i+1]= copia
				
				}
			}
		}
		escreva("numeros impares: \n")
		para(inteiro i=0; i < contaimpar ; i++){
			escreva(numerosimpares[i], "\n")
		}
	}
	funcao fusao(inteiro numerospares[], inteiro numerosimpares[], inteiro contapar, inteiro contaimpar){
		inteiro conca[10]
		para(inteiro i=0; i < contapar+i; i++){
		conca[i] = numerospares[i]
		contapar--
		escreva("\n",conca[i])
		}
		para(inteiro i=0; i < contaimpar+i; i++){
		conca[i+contapar] = numerosimpares[i]
		contaimpar--
		escreva("\n",conca[i])
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1831; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */