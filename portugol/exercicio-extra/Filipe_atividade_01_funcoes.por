programa
{
	
	funcao inicio()
{
		cadeia n1, n2
		
		escreva("digite seu 1 nome: ")
		leia(n1)
		escreva("digite seu 2 nome: ")
		leia(n2)

		escreva("esse é o seu nome completo: ", nome(n1, n2))
		
	}
	funcao cadeia nome(cadeia nome1, cadeia nome2){
	
	retorne(nome1 + " " + nome2)
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 272; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */