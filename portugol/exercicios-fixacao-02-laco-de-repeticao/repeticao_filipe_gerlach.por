programa
{
	
	funcao inicio(){
		//exe_01()
		//exe_02()
		//exe_03()
		//exe_04()
		//exe_05()
		//exe_06()
		exe_07()
		
	}
	funcao exe_01(){
	inteiro soma = 0, num = 0, contador = 0, media
	        
	    enquanto(contador < 5) {
	        escreva("Insira um número\n")
	        leia(num)
	        se(num >= 0) {
    	        soma = soma + num
    	        num = 0
    	        contador++
	        } senao se(num < 0){
	            escreva("Não é permitido inserir números negativos\n")
	            pare
	        }
	    }   
	    se(num >= 0) {
	        
	    media = soma/5
	    
	    se(contador == 5) {
    	    escreva("A soma dos números inseridos é ",soma)
    	}
    	       
            escreva("\nVocê inseriu ",contador," números")
            escreva("\nA média dos números inseridos é ", media)
	    }
	}
	funcao exe_02(){
		
		real maior, altura, menor
		inteiro cont = 0
	    
	    escreva("Insira uma altura\n")
	    leia(maior)

	    menor = maior
	    
	    enquanto(cont < 5) {
	        escreva("Insira sua altura\n")
	        leia(altura)
	        
	        se(altura>maior) {
	        	maior = altura
	        } 

	        se(menor>altura) {
	        	menor = altura
	        }
	        cont++
	    }
	    escreva("A maior altura é ",maior," e a menor altura é ",menor)
	}
	funcao exe_03(){
		real numero

		escreva("digite um numero: ")
		leia(numero)

		enquanto(numero < 100){
		numero = numero * 3
		escreva("\nseu numero es em: ", numero)
		
		}
	}
	funcao exe_04(){
		inteiro num = 233, valor, contagem
		faca{se(num <= 300 e num >= 400){
			num = num + 3
			escreva("\nseu valor é: ", num)
		}senao
			num = num + 5
			escreva("\nseu valo é: ", num)
		}enquanto(num < 456)
		escreva("\no valor final é: ", num)
	}
	funcao exe_05(){
		inteiro num, multi

		escreva("digite um numero: ")
		leia(num)

		multi = num
		faca{
			escreva(" ", num) 
			multi= multi * num
			num = num - 1
			
			
		
		}enquanto(num >= 1)
		 escreva("\nO valor do seu numero vezes seus antecessores é: ", multi)
	}
    funcao exe_06(){
      inteiro num, mais

		escreva("digite um numero: ")
		leia(num)

		mais = num
		faca{
			escreva(" ", num) 
			num = num - 1
			mais= mais + num
		
		}enquanto(num >= 1)
		 escreva("\nO valor de seu numero mais seus antecessores �: ", mais)
	}
    funcao exe_07(){
        
        inteiro filhos, i = 0, salario = 0, media, soma = 0, dividir = 0
        
        escreva("\nInforme o n� de filhos: ")
        leia(filhos)
        escreva("\nInforme o seu sal�rio: ")
        leia(salario)
    enquanto(i >= 20){
        escreva("\nInforme o n� de filhos: ")
        leia(filhos)
        escreva("\nInforme o seu sal�rio: ")
        leia(salario)
        
        media = filhos + filhos

        dividir = filhos+filhos/2
    }para(inteiro contador = 0 ; contador<=20 ; contador++)
        media = filhos / 20
        escreva("\nA m�dia do sal�rio da popula��o �",s oma)
        escreva("\nA m�dia do n� de filhos �", dividir)
        escreva("\nO maior sal�rio", salario)

    }
}

