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





  }
}
  

