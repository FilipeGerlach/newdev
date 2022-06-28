programa
{
	inclua biblioteca Util
	
	funcao inicio()
	{
		inteiro numposi = 0, sorteio = 0, verifica[9], verificabot[9]
		cadeia jogovelha[3][3]
		escreva("o primeiro a digitar sera o bolinha e o segundo o xis\n")
		escreva("se apertar a mesma tecla 2 vezes ele dara errado e substituira")
		jogovelha[0][0] = " "
		jogovelha[1][0] = " "
		jogovelha[2][0] = " "
		jogovelha[0][1] = " "
		jogovelha[1][1] = " "
		jogovelha[2][1] = " "
		jogovelha[0][2] = " "
		jogovelha[1][2] = " "
		jogovelha[2][2] = " "
		
		para(inteiro i=0; i < 10; i++){
			
			se(i > 9){
				escreva("deu velha!!!!!")
			}
			escreva("\n1 2 3\n4 5 6\n7 8 9\n")
			escreva("essas são as posiçoes dos numeros: ")
			escreva("\ndigite um numero da sua posição: \n")
			se(i == 1 ou i == 3 ou i == 5 ou i == 7 ou i == 9){
			
			sorteio = sorteia(1,9)
			
			
				para(inteiro l=0; l < 100; l++){
					//se(sorteio == verificabot[0] ou sorteio == verificabot[1] ou sorteio == verificabot[2]
					//ou sorteio == verificabot[3] ou sorteio == verificabot[4] ou sorteio == verificabot[5]){
					//	sorteio = sorteia(1,9)
					//}
					se(sorteio == verificabot[0] ou sorteio == verificabot[1] ou sorteio == verificabot[2]
					ou sorteio == verificabot[3] ou sorteio == verificabot[4] ou sorteio == verificabot[5]){
						sorteio = sorteia(1,9)
					}
					
				}
				numposi = sorteio
			}senao{
			verificabot[i] = numposi
			
			leia(numposi)
			verifica[i] = numposi
			limpa()
			
			
			}
			
			
			se(numposi == 1){
				jogovelha[0][0] = "O"
			} se(numposi == 2){
				jogovelha[1][0] = "O"
			} se(numposi == 3){
				jogovelha[2][0] = "O"
			} se(numposi == 4){
				jogovelha[0][1] = "O"
			} se(numposi == 5){
				jogovelha[1][1] = "O"
			} se(numposi == 6){
				jogovelha[2][1] = "O"
			} se(numposi == 7){
				jogovelha[0][2] = "O"
			} se(numposi == 8){
				jogovelha[1][2] = "O"
			} se(numposi == 9){
				jogovelha[2][2] = "O"
			}
			se(i == 1 ou i == 3 ou i == 5 ou i == 7 ou i == 9){
			se(numposi == 1){
				jogovelha[0][0] = "X"
			} se(numposi == 2){
				jogovelha[1][0] = "X"
			} se(numposi == 3){
				jogovelha[2][0] = "X"
			} se(numposi == 4){
				jogovelha[0][1] = "X"
			} se(numposi == 5){
				jogovelha[1][1] = "X"
			} se(numposi == 6 ){
				jogovelha[2][1] = "X"
			} se(numposi == 7){
				jogovelha[0][2] = "X"
			} se(numposi == 8){
				jogovelha[1][2] = "X"
			} se(numposi == 9){
				jogovelha[2][2] = "X"
			}
			
			}se(jogovelha[0][0] == "O" e jogovelha[1][0] == "O" e jogovelha[2][0] == "O"){
				escreva("você ganhou o jogo bolinha !!!!!!!!!!!!!!!!")
				pare
			}se(jogovelha[0][1] == "O" e jogovelha[1][1] == "O" e jogovelha[2][1] == "O"){
				escreva("você ganhou o jogo bolinha !!!!!!!!!!!!!!!!")
				pare
			}se(jogovelha[0][2] == "O" e jogovelha[1][2] == "O" e jogovelha[2][2] == "O"){
				escreva("você ganhou o jogo bolinha !!!!!!!!!!!!!!!!")
				pare
			}se(jogovelha[0][0] == "O" e jogovelha[0][1] == "O" e jogovelha[0][2] == "O"){
				escreva("você ganhou o jogo bolinha !!!!!!!!!!!!!!!!")
				pare
			}se(jogovelha[1][0] == "O" e jogovelha[1][1] == "O" e jogovelha[1][2] == "O"){
				escreva("você ganhou o jogo bolinha !!!!!!!!!!!!!!!!")
				pare
			}se(jogovelha[2][0] == "O" e jogovelha[2][1] == "O" e jogovelha[2][2] == "O"){
				escreva("você ganhou o jogo bolinha !!!!!!!!!!!!!!!!")
				pare
			}se(jogovelha[0][0] == "O" e jogovelha[1][1] == "O" e jogovelha[2][2] == "O"){
				escreva("você ganhou o jogo bolinha !!!!!!!!!!!!!!!!")
				pare
			}
			se(jogovelha[0][0] == "X" e jogovelha[1][0] == "X" e jogovelha[2][0] == "X"){
				escreva("você ganhou o jogo xisinho !!!!!!!!!!!!!!!!")
				pare
			}se(jogovelha[0][1] == "X" e jogovelha[1][1] == "X" e jogovelha[2][1] == "X"){
				escreva("você ganhou o jogo xisinho !!!!!!!!!!!!!!!!")
				pare
			}se(jogovelha[0][2] == "X" e jogovelha[1][2] == "X" e jogovelha[2][2] == "X"){
				escreva("você ganhou o jogo xisinho !!!!!!!!!!!!!!!!")
				pare
			}se(jogovelha[0][0] == "X" e jogovelha[0][1] == "X" e jogovelha[0][2] == "X"){
				escreva("você ganhou o jogo xisinho !!!!!!!!!!!!!!!!")
				pare
			}se(jogovelha[1][0] == "X" e jogovelha[1][1] == "X" e jogovelha[1][2] == "X"){
				escreva("você ganhou o jogo xisinho !!!!!!!!!!!!!!!!")
				pare
			}se(jogovelha[2][0] == "X" e jogovelha[2][1] == "X" e jogovelha[2][2] == "X"){
				escreva("você ganhou o jogo xisinho !!!!!!!!!!!!!!!!")
				pare
			}se(jogovelha[0][0] == "X" e jogovelha[1][1] == "X" e jogovelha[2][2] == "X"){
				escreva("você ganhou o jogo xisinho !!!!!!!!!!!!!!!!")
				pare
			}
			escreva("|",jogovelha[0][0],"|",jogovelha[1][0],"|",jogovelha[2][0],"|\n|",jogovelha[0][1],"|",jogovelha[1][1],"|",jogovelha[2][1],"|\n|",jogovelha[0][2]
			,"|",jogovelha[1][2],"|",jogovelha[2][2],"|")
			
			
		}
		escreva("\n|",jogovelha[0][0],"|",jogovelha[1][0],"|",jogovelha[2][0],"|\n|",jogovelha[0][1],"|",jogovelha[1][1],"|",jogovelha[2][1],"|\n|",jogovelha[0][2]
			,"|",jogovelha[1][2],"|",jogovelha[2][2],"|")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1465; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {verifica, 7, 36, 8}-{verificabot, 7, 49, 11}-{jogovelha, 8, 9, 9};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */