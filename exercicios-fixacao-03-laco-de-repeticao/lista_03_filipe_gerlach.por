programa
{
inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
	//exe_01()
	//exe_02()
	//exe_03()
	//exe_04()
	//exe_05()
	//exe_06()
	//exe_08()
	//exe_09()
	//exe_10()
	}
		funcao exe_01(){
		
		inteiro mult, numero, tabuada = 0

		escreva("digite um numero: ")
		leia(numero)

			enquanto(tabuada <= 10){

			mult= numero * tabuada
			escreva("\nA tabuada do seu numero Ã©: ", mult)
			tabuada++
			}
		}
		funcao exe_02(){
			inteiro mult, numero = 1, tabuada = 0

			

			enquanto(numero <= 10){
			tabuada = 0
			mult= numero * tabuada
			escreva("\n\nA tabuada do ", numero," Ã©: ", mult)
			tabuada++
			mult= numero * tabuada
			escreva("\nA tabuada do ", numero," Ã©: ", mult)
			tabuada++
			mult= numero * tabuada
			escreva("\nA tabuada do ", numero," Ã©: ", mult)
			tabuada++
			mult= numero * tabuada
			escreva("\nA tabuada do ", numero," Ã©: ", mult)
			tabuada++
			mult= numero * tabuada
			escreva("\nA tabuada do ", numero," Ã©: ", mult)
			tabuada++
			mult= numero * tabuada
			escreva("\nA tabuada do ", numero," Ã©: ", mult)
			tabuada++
			mult= numero * tabuada
			escreva("\nA tabuada do ", numero," Ã©: ", mult)
			tabuada++
			mult= numero * tabuada
			escreva("\nA tabuada do ", numero," Ã©: ", mult)
			tabuada++
			mult= numero * tabuada
			escreva("\nA tabuada do ", numero," Ã©: ", mult)
			tabuada++
			mult= numero * tabuada
			escreva("\nA tabuada do ", numero," Ã©: ", mult)
			tabuada++
			numero++
			}
		}
		funcao exe_03(){
			inteiro contador = 1000, numero, valor = 0

				enquanto (contador <2000) {

					 valor = contador % 11
					 
					se (valor == 2){
						escreva("\nEsse numero Ã© divisivel por 11 com resto 2: ", contador) 
					}

					contador++
				}
				
				
		}
		funcao exe_04(){
			inteiro n1, n2, n3
				escreva("escreva um numero: ")
				leia(n1)
				escreva("escreva um numero: ")
				leia(n2)
				escreva("escreva um numero: ")
				leia(n3)

				se(n1 >= 30 e n1 <= 90){
					escreva("essse numero esta entre 30 e 90: ", n1)
				} se(n2 >= 30 e n2 <= 90){
					escreva("\nessse numero esta entre 30 e 90: ", n2)
				}se(n3 >= 30 e n3 <= 90){
					escreva("\nessse numero esta entre 30 e 90: ", n3)
				}
		}
		funcao exe_05(){
        real money
        cadeia clientes

        para(inteiro i = 1; i < 6; i++) {
            escreva("Insira o nome do cliente:\n")
            leia(clientes)

            se(i == 5){
                escreva("Qual foi o faturamento a loja no mês?\n")
                leia(money)

                se(money > 54000) {
                    escreva("Superamos o faturamento da loja rival em R$", money-54000,"\n")
                } senao se(money < 54000) {
                    escreva("Ficamos inferiores em relação ao faturamento da loja rival, tivemos défict em R$", 54000-money,"\n")
                } senao se(money == 54000){
                    escreva("Empatamos com a loja rival no faturamento\n")
                }
            }
        }
    }
    		funcao exe_06(){
    	   inteiro peso, idade, pes = 0, idadeq = 0

    		para(inteiro i = 0; i < 6; i++){
    			escreva("Insira o seu peso: ")
    			leia(peso)
			
    			escreva("insira sua idade: ")
    			leia(idade)
    			se(peso > 90){
    				pes++
    			}senao se(idade < 60){
    				idadeq++
    			}    			
    		}
    		escreva("\nesse é o numero de pessoas que tem peso acima de 90kg: ", pes)
    		escreva("\nesse é o numero de pessoas que tem idade acima de 60: ", idadeq)
    		}
    		funcao exe_08(){
		real compra, compraTot
		inteiro percento = 0
		
		escreva("Insira o valor da compra\n")
		leia(compra)

		compraTot = compra
		
		se(compra >= 500) {
			
			faca{
				compra = compra - 100
				percento++
			}enquanto(compra > 500)
			
			escreva("Sua compra de ", compraTot," teve um desconto de ",percento,"% e ficou em ",(compraTot-(compraTot*percento)/100))
			
		}senao se(compra < 500) {
			
			escreva("Sua compra ficará com o valor padrão, R$",compra)
		}

	}
		funcao exe_09(){
    		inteiro idade, bb = 0, kid = 0, vei = 0, veiao = 0, idoso = 0

    		para(inteiro i = 0; i < 10; i++) {
    			escreva("Insira a idade\n")
    			leia(idade)

    			se(idade <= 15) {
    				bb++
    			} senao se(idade > 15 e idade <= 30) {
    				kid++
    			} senao se(idade > 30 e idade <= 45) {
    				vei++
    			} senao se(idade > 45 e idade <= 60) {
    				veiao++
    			} senao se(idade > 60) {
    				idoso++
    			}
    		}
    		
    		escreva("Temos ",bb," pessoas em até 15 anos\n")
    		escreva("Temos ",kid," pessoas acima de 15 anos e até 30 anos\n")
    		escreva("Temos ",vei," pessoas acima de 30 anos e até 45 anos\n")
    		escreva("Temos ",veiao," pessoas acima de 45 anos e até 60 anos\n")
    		escreva("Temos ",idoso," pessoas acima de 60 anos\n")

    		escreva((bb*100)/10,"% das pessoas informadas tem 15 anos ou menos\n")
    		escreva((idoso*100)/10,"% das pessoas informadas tem mais de 60\n")
    	}
		funcao exe_10(){
			inteiro valorc
			real parcela, porc

			 escreva("digite o valor do carro: ")
			 leia(valorc)
			 
			escreva("\n6........", mat.arredondar(valorc * 1.03, 2))
			escreva("\n12.......", mat.arredondar(valorc * 1.06, 2))
			escreva("\n18.......", mat.arredondar(valorc * 1.09, 2))
			escreva("\n24.......", mat.arredondar(valorc * 1.12, 2))
			escreva("\n30.......", mat.arredondar(valorc * 1.15, 2))
			escreva("\n36.......", mat.arredondar(valorc * 1.18, 2))
			escreva("\n42.......", mat.arredondar(valorc * 1.21, 2))
			escreva("\n48.......", mat.arredondar(valorc * 1.24, 2))
			escreva("\n54.......", mat.arredondar(valorc * 1.27, 2))
			escreva("\n60.......", mat.arredondar(valorc * 1.30, 2))

			escreva("\nse for pagar a vista o valor serÃ¡: ", valorc * 0.8)
		}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3975; 
 * @DOBRAMENTO-CODIGO = [16, 30, 70, 86, 103, 125, 143, 167, 196];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */