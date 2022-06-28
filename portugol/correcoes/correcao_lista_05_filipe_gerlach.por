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
		exe_08()
		//exe_09()
		//exe_10()

	}
	funcao exe_01(){
		inteiro num[40]

		num[0]=1
		num[1]=1
		para(inteiro i=2; i < 40; i++){
			num[i] = num[i-1] + num[i-2]
			
		}
		para(inteiro i=0; i < 40; i++){
			escreva("\n", num[i])
		}
	}
	funcao exe_02(){
		inteiro num[100]
		
		para(inteiro i=1; i < 100; i++){
			
			num[i] = num[i-1] + 1
			se(num[i] % 2 == 0){
				escreva("\n esse numero é par: ", num[i])
			}
		}
	}
	funcao exe_03(){
		inteiro num[100]
		
		para(inteiro i=1; i < 100; i++){
			
			num[i] = num[i-1] + 1
			se(num[i] % 2 != 0){
				escreva("\n esse numero é par: ", num[i])
			}
		}
	}
	funcao exe_04(){
		inteiro num[10]

		para(inteiro i=0; i < 10; i++){

		escreva("digite um numero: ")
		leia(num[i])

		num[i]= num[i] * num[i] * num[i]
		}
		para(inteiro i=0; i < 10; i++){

		escreva("\n o quadrado do seu numero é: ", num[i])
		}
	}
	funcao exe_05(){
		inteiro atletas[10], media = 0

		para(inteiro i=0; i < 10; i++){
			escreva("digite sua altura: ")
			leia(atletas[i])
		}
		para(inteiro i=0; i < 10; i++){
			media = media + atletas[i] 
		}
		media = media/10
		para(inteiro i=0; i < 10; i++){
			se(atletas[i] > media){
				escreva("\n essas alturas estão em cima da media: ", atletas[i])
		}
		}
	}
	funcao exe_06(){
		inteiro numero[10], invertido[10]

			para(inteiro i=0; i < 10; i++){
				escreva("digite um numero: ")
				leia(numero[i])
			}
			invertido[0] = numero[9]
			invertido[1] = numero[8]
			invertido[2] = numero[7]
			invertido[3] = numero[6]
			invertido[4] = numero[5]
			invertido[5] = numero[4]
			invertido[6] = numero[3]
			invertido[7] = numero[2]
			invertido[8] = numero[1]
			invertido[9] = numero[0]
			
			
			escreva("os seus numeros invertidos são: ")
				para(inteiro o=0; o < 10; o++){

					escreva(invertido[o], ", ")
				}
	}
	funcao exe_07(){
		inteiro numero[10], resultado[10]
		para(inteiro i=0; i < 10; i++){
			escreva("digite dez numeros: ")
			leia(numero[i])
			se(numero[i] % 2 == 0){
				resultado[i] = numero[i] / 2
			}senao se(numero[i] % 2 != 0){
				resultado[i] = numero[i] * 3
			}senao se(numero[i] < 0 ){
				pare
			}
			
		}
		para(inteiro i=0; i < 10; i++){
		escreva("\nesses são seus numeros: ", resultado[i])
		}
	}
	funcao exe_08(){
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
	funcao exe_09(){
		cadeia nomes[10], achar[10]
		inteiro posicao = 0

		para(inteiro i=0; i < 10; i++){
			escreva("Insira o nome: ")
			leia(nomes[i])
		}limpa()
		para(inteiro i=0; i >= 0; i++){
			escreva("\nInsira o nome de qualquer pessoa: ")
			leia(achar[i])
			posicao = i
			para(inteiro x=0; x < 10; x++){
				se(achar[posicao] == nomes[x]) {
					escreva("ACHEI")
					pare
				} se(x==9) {
					escreva("NÃO ACHEI")
					pare
				}
			}
		}
	}
	funcao exe_10(){
		inteiro num[20], num2[10], num3[10]

		para(inteiro i=0; i < 20; i++){
			escreva("digite um numero: ")
			leia(num[i])
		}
		para(inteiro i=0; i < 10; i++){
			num2[i]= num[i]
		}
		para(inteiro i=10; i < 20; i++){
			num3[i-10]= num[i]
		}
		para(inteiro i=0; i < 10; i++){
		
		escreva("\nesse é o vetor 1: ", num2[i])
		
		}
		para(inteiro i=0; i < 10; i++){
		escreva("\nesse é o vetor 2: ", num3[i])
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4130; 
 * @DOBRAMENTO-CODIGO = [30, 41, 52, 67, 84, 109, 196, 219];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */