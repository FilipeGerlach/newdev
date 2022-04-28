programa
{
	
	funcao inicio()
	{
		
//		exercicio1()
//		exercicio2()
//		exercicio3()
//		exercicio4()
//		exercicio5()
//		exercicio6()
//		exercicio7()
//		exercicio8()
//		exercicio9()
//		exercicio10()
//		exercicio11()
//		exe_12()
//      exe_13()
//      exe_14()
//      exe_15()
        exe_16()
	}
	funcao exercicio1(){
		real numero

		
		escreva("\n digite um numero:")
		leia(numero)

		se(numero>100)
		escreva("esse numero Ã© maior que 100")
		senao(escreva("esse numero nÃ£oÃ©maior que 100"))
		
	}
	funcao exercicio2(){
		cadeia senha, senhacorreta		

		escreva("digite sua senha:")
		leia(senha)

		senhacorreta="portugol"

		se(senha==senhacorreta) 
			escreva("acesso permitido")
			
		 
		senao(escreva("acesso negado"))
	}
	funcao exercicio3(){
		real numero

		escreva("\n digite um numero:")
		leia(numero)

		se(numero >= 100 e numero <= 500){
		escreva("esse numero esta entre 100 e 500")
		
		}
		senao(escreva("esse numero nÃ£o esta entre 100 e 500"))
	}
	funcao exercicio4(){
		real nota1, nota2, media

		escreva("digite sua primeira nota:")
		leia(nota1)

		escreva("digite sua segunda nota:")
		leia(nota2)

		media= (nota1 + nota2)/2

		se(media>7){
			escreva("vocÃª foi aprovado, e sua mÃ©dia Ã©:", media)
		}
			senao(escreva("vocÃª foi reprovado e sua mÃ©dia Ã©:", media))
	}
	funcao exercicio5(){
		inteiro numero

		escreva("declare um numero:")
		leia(numero)

		se(numero % 5 >= 1){
		escreva("esse numero nÃ£o Ã© divisivel por 5.")
		}
		senao(escreva("esse nuemro Ã© divisivel por 5."))
		
	}
	funcao exercicio6(){
		inteiro numero

		escreva("digite um numero:")
		leia(numero)

		se(numero % 2 == 1){
			escreva("esse numero Ã© impar:", numero)
		}
		senao(escreva("esse numero Ã© par:",numero))
	}
	funcao exercicio7(){
		real num1,num2

		escreva("escreva o primeiro numero:")
		leia(num1)

		escreva("escreva o segundo numero:")
		leia(num2)


		se(num1 > num2){
			escreva("\n esse Ã© o maior numero:", num1)
		}senao{
			se(num1 == num2){
			escreva("esses numeros sÃ£o iguais: ", num1, " , ", num2)
			}
			
			senao
			escreva("\n esse Ã© o maior numero:", num2)
		}
			
		
	}
	funcao exercicio8(){
		real sbruto, sliquido

		escreva("digite o seu salario bruto")
		leia(sbruto)

		se(sbruto>2000){
		sliquido = sbruto*0.20
		escreva("esse Ã© o seu salario bruto: ", sbruto - sliquido)
		}
		 senao{
			sliquido = sbruto*0.10
			escreva("seu slario liquido Ã©: ", sbruto - sliquido)
		}
	}
	funcao exercicio9(){
		real valor, venda

		escreva("digite o valor da compra: ")
		leia(valor)

		se(valor < 200){
		venda = valor * 0.50
		escreva("o valor de venda vai ser: ", valor + venda)
		}
		senao{

			venda = valor * 0.30
			escreva("o valor de venda vai ser: ", valor + venda)
		}
		
	}
	funcao exercicio10(){
		real n1, n2, media

		escreva("digite sua primeira nota: ")
		leia(n1)
		escreva("digite sua segunda nota: ")
		leia(n2)

		media = (n1 + n2)/2

		se(media>=7)
			escreva("aprovado! sua nota Ã©: ", media)
		senao se(media < 7 e media>=3){
			escreva("recuperaÃ§Ã£o!")
		}
		senao{
			escreva("reprovado!")
		}
	}
	funcao exercicio11(){
		real l1, l2, l3

		escreva("informe o primeiro lado do triangulo: ")
		leia(l1)
		escreva("informe o segundo lado do triangulo: ")
		leia(l2)
		escreva("informe o terceiro lado do triangulo: ")
		leia(l3)

		se(l1 == l2 e l2 == l3){
			escreva("é equilatero!")
		} senao se(l1 == l2 ou l2 == l3 ou l1 == l3){
				escreva("é escaleno!")
			   }
		senao{
			escreva("é isóceles!")
		}
	}
    funcao exe_12(){
         inteiro n1, n2, n3
         escreva("digite um numero: ")
         leia(n1)
         escreva("digite um numero: ")
         leia(n2)
         escreva("digite um numero: ")
         leia(n3)
         se(n1 > n2 e n1 > n3){
            escreva("o maior numero é: ", n1)
         }senao se(n2 > n1 e n2 > n3){
         escreva ("o maior numero é:", n2)
         }
         senao
         escreva("o maior numero é: ", n3)
        
    }
    funcao exe_13(){
        inteiro n1, n2, n3
         escreva("digite um numero: ")
         leia(n1)
         escreva("digite um numero: ")
         leia(n2)
         escreva("digite um numero: ")
         leia(n3)
         
         se(n1 > n2 e n1 > n3 e n2 > n3){
         escreva("a ordem dos seus numeros crecente é:", n1, n2 , n3)
         }  senao se(n2 > n1 e n2 > n3 e n1 > n3){
            escreva("a ordem dos seus numeros crecente é:", n2, n1 , n3)
         }  senao se(n3 > n1 e n3 > n2 e n1 > n2){
            escreva("a ordem dos seus numeros crecente é:", n3, n1 , n2)
         }
        
    }
    funcao exe_14(){
        inteiro eleitores, prefeito
        cadeia municipio
        
        escreva("digite o nome do municipio: ")
        leia(municipio)
        escreva("a quantidade de eleitores: ")
        leia(eleitores)
        escreva("a quantidade de votos no mais votado: ")
        leia(prefeito)
        
        eleitores = eleitores / 2
        se(prefeito > eleitores){
            escreva("o prefeito foi aprovado!!")
        }senao{
            escreva("o prefeito não foi aprovado.")
        }
    
    }
    funcao exe_15(){
        cadeia carro
    inteiro km,litro

        escreva("qual o tipo de carro: ")
        leia(carro)
        limpa()
        escreva("quantos litros caba no tanque: ")
        leia(litro)
        limpa()

        se (carro == "C"){
            km = litro * 12
            escreva("seu carro andará: ", km, " km")
        } senao se (carro == "B") {
            km = litro * 9
            escreva("seu carro andará: ", km, "km")
        } senao se (carro == "A"){
            km = litro * 8
            escreva("seu carro andará: ", km, "km")
        } senao {
            escreva("Você informou um tipo invalido ")
            }
    }
    funcao exe_16(){
        inteiro a, b ,c
        
            escreva("escreva num numero: ")
            leia(a)
            escreva("escreva num numero: ")
            leia(b)
            
            c = c = b
            b = b = a
            a = a = c
            escreva("seu numero trocado é: ", a)
            escreva("seu numero trocado é: ", b)
    }
}
