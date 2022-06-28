programa
{
	
	funcao inicio()
	{
		cadeia concatenado = concatenar(1, 2)
		escreva(" ", concatenado,"\n")
	//essa é a função 2
		divi(3, 1)
	//essa é a função 3
		escreva("\n : ", multi(3.2, 1.4))
	//essa é a finção 4
	escreva("\n : ", sub(4, 2))

			
	}
	//ess funcao inicia no modo cadeia ela lê suas variaveis inteiras compara elas com um se e retorna se for verdadeiro 
	//"são iguais" se nao retorna a soma das duas variaveis
	funcao cadeia concatenar(inteiro parametro1, inteiro parametro2){
		se (parametro1 == parametro2){
			retorne"são iguais"
		}
		retorne parametro1 + " " + parametro2
	}
	//essa é função vazia ela so retorna a operação dos numeros.
	funcao divi(inteiro n1, inteiro n2){
		escreva(" : ", n1 / n2)
	}
	//essa funcao retorna dois valores que vc informar quando colocar em uma operação e a chamar essa operação por ser 
	//real vai ser uma operação com numeros decimais
	funcao real multi(real n1, real n2){
		n1= 1.2
		n2=1.4
		retorne n1*n2
	}
	//essa funcao é a mesma sistematica que o real mas não possui numeros decimais 
	//ele pede dois numeros inteiro e os subtrai
	funcao inteiro sub(inteiro n1, inteiro n2){

	retorne n1 - n2
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 84; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */