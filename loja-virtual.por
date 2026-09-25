programa {
  funcao inicio() {
    
    //variaveis de controle de navegacao
    inteiro opcao_menu_principal = -1
    inteiro opcao_crud = -1
    inteiro opcao_pagamento = 0

    //variaveis auxiliar para pausar a tela
    cadeia tecla_pausa = ""

    //preços e estoques fixos dos produtos
    real preco_prod1 = 150.0, preco_prod2 = 60.0, preco_prod3 = 250.0
    inteiro estoque_prod1 = 10, estoque_prod2 = 15, estoque_prod3 = 8

    //variaveis do carrinho de compras (qtds dos itens)
    inteiro qtd_carrinho_prod1 = 0
    inteiro qtd_carrinho_prod2 = 0
    inteiro qtd_carrinho_prod3 = 0

    //variaveis auxiliares para operacoes
    inteiro quantidade_temp = 0
    real valor_total_bruto = 0.0
    real valor_desconto = 0.0

    //1. laço principal do sistema
    enquanto (opcao_menu_principal != 0){

      //limpa a tela a cada iteracao para manter o menu organizado
      limpa()

      escreva("=== BEM-VINDO A NOSSA LOJA VIRTUAL ===")

      escreva("-----------------------------------------")

      escreva("MENU PRINCIPAL")

      escreva("1. ver produtos e adicionar ao carrinho (CREATE)")


      escreva("2. ver meus itens no carrinho (READ)")


      escreva("3. alterar quantidade no carrinho (READ)")


      escreva("4. remover item do carrinho (DELETE)")


      escreva("0. finalizar compra e ir ao pagamento")


      escreva("Escolha uma opçao: ")
      leia(opcao_menu_principal)
      
      Escolha (opcao_menu_principal)
      {
        //==========================================
        //c - CREATE (adicionar itens ao carrinho)
        //==========================================
      }
    
    caso 1:
     limpa()

     escreva("---CATALOGO DE PRODUTOS---")

     escreva("1. camisa esportiva (Estoque: ", estoque_prod1, ") - R$ ", preco_prod1")

     escreva("2. bone casual (Estoque: ", estoque_prod2, ") - R$ ", preco_prod2")

     escreva("3. tenis de corrida  (Estoque: ", estoque_prod3, ") - R$ ", preco_prod3")

     escreva("digite a quantidade desejada: ")
     leia(quantidade_temp)

     se (opcao_crud == 1){
     
     se (quantidade_temp > 0 e quantidade_temp <= estoque_prod1)
     } senao {

     escreva("Produto inválido!")

 }

  escreva ("Pressione ENTER para voltar ao menu ...")
  leia (tecla_pausa)

    pare

// =====================================================

// R - READ (visualizar o Carrinho)

// =====================================================

   caso 2:

  limpa ()

  escreva("--- MEU CARRINHO DE COMPRAS ---")

  
  escreva ("Pressione ENTER para voltar ao menu ...")
  leia (tecla_pausa)

   pare

   //=============================================
   //U - UPDATE (atualizar quantidade no carrinho)
   //=============================================

   caso 3
   limpa()
  
   escreva("---ALTERAR QUANTIDADE NO CARRINHO---")

   escreva("1. camisa esportiva (no carrinho: ", qtd_carrinho_prod1)")

   escreva("2. boné casual (no carrinho: ", qtd_carrinho_prod2)")

   escreva("3. tênis de corrida (no carrinho: ", qtd_carrinho_prod3)")

   escreva ("Pressione ENTER para voltar ao menu ...")
   leia(tecla_pausa)

   pare

   caso contrario:
   limpa()
   
   escreva("opção invalida! escolha uma das opçoẽs do menu.")

   escreva("pressione ENTER para continuar...")

   escreva("Quantidade inválida ou acima do estoque disponível!\n")
   
    } senao {
    escreva("Opção inválida!\n")
   }

   escreva("Pressione ENTER para voltar ao menu...")
   leia(tecla_pausa)
   pare

   // =========================================================
   // D - DELETE (Remover Item do Carrinho)
   // =========================================================
   
   caso 4:
  limpa()
  escreva("---REMOVER ITEM DO CARRINHO---")

  escreva("1. camisa esportiva (no carrinho: ", qtd_carrinho_prod1, ")")
    
  escreva("2. bone casual (no carrnho: ", qtd_carrinho_prod2, ")")

  escreva("3. tenis de corrida (no carrinho: ", qtd_carrinho_prod3, ")")

  escreva("escolha o item que deseja remover totalmente: ")
  leia(opcao_crud)

  se (opcao_crud == 1) {

    estoque_prod1 = estoque_prod1 + qtd_carrinho_prod1
    qtd_carrinho_prod1 = 0
   
  escreva("camisa esportiva removida do carrinho!")
   
   } senao se (opcao_crud == 2) {
    
    estoque_prod2 = estoque_prod2 + qtd_carrinho_prod2
    qtd_carrinho_prod2 = 0
    
    escreva("Boné Casual removido do carrinho!")
   } senao se (opcao_crud == 3) {
     
      estoque_prod3 = estoque_prod3 + qtd_carrinho_prod3
      qtd_carrinho_prod3 = 0
      
      escreva("Tênis de Corrida removido do carrinho!")
  
   } senao {
      escreva(" Opcao invalida! ")
   }
    escreva("Pressione ENTER para voltar ao menu...")
    leia(tecla_pausa)
    pare 

    caso 0:
       limpa()
       escreva("Encerrando seleção de intens e indo para o pagamento...")
       pare
       caso contrario:
       limpa()
       escreva("opção inválida! escolha uma das opções do menu.")
       escreva("presione ENTER para continuar...")
   
  }
}