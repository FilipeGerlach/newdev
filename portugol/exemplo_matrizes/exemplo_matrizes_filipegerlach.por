programa
{
	
	funcao inicio(){
		inteiro vetor[2]
		inteiro matriz[2][2]

		//posicionando um numero na matriz.
		matriz[0][1] = 10
		matriz[1][1] = 5
		matriz[0][0] = 1
		matriz[1][0] = 2

		//primeiro para é pra linha e o segundo a coluna.
		//no primeiro laço de repetição percorremos as linhas.
		//no segundo laço percorremos as colunas
		//lembrar sempre de alterar a variavel incrementadora dos dois
		para(inteiro linha=0; linha < 2; linha++){

			//percorre coluna
			para(inteiro coluna=0; coluna < 2; coluna++){
				escreva(" ", matriz[linha][coluna],", ")
			}
			
		}
		cadeia alunos[] = {"Bruno", "joão", "maria"}
		real notas[3][3] = {{7.0,6.0,4.0},{6.5,8.5,8.7},{7.8,3.0,5.0}}
		real medias[3]

		para(inteiro linha=0; linha < 3; linha++){
			real soma = 0.0
			para(inteiro i=0; i < 3; i++){
				soma += notas[linha][i]
			}
			medias[linha] = soma / 3
		}

		inteiro numeros[2][2]

		para(inteiro l=0; l < 2; l++){
			
			para(inteiro c=0; c < 2; c++){
				escreva("digite um numero: ")
				leia(numeros[l][c])

			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 898; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {numeros, 38, 10, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */