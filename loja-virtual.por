
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
real valor_final = 0.0

//1. laço principal do sistema
enquanto (opcao_menu_principal != 0)
{
  //limpa a tela a cada iteracao para manter o menu organizado
  limpa()

  escreva("=== BEM-VINDO A NOSSA LOJA VIRTUAL ===\n")
  escreva("-----------------------------------------\n")
  escreva("MENU PRINCIPAL\n")
  escreva("1. ver produtos e adicionar ao carrinho (CREATE)\n")
  escreva("2. ver meus itens no carrinho (READ)\n")
  escreva("3. alterar quantidade no carrinho (READ)\n")
  escreva("4. remover item do carrinho (DELETE)\n")
  escreva("0. finalizar compra e ir ao pagamento\n")
  escreva("Escolha uma opçao: \n")
  leia(opcao_menu_principal)

  escolha (opcao_menu_principal)
  {
      //==========================================
      //c - CREATE (adicionar itens ao carrinho)
      //==========================================

caso 1:
    limpa()

    escreva("---CATALOGO DE PRODUTOS---\n")
    escreva(" 1. camisa esportiva (Estoque: ", estoque_prod1, ") - R$ ", preco_prod1, "\n" )
    escreva(" 2. bone casual (Estoque: ", estoque_prod2, ") - R$ ", preco_prod2, "\n")
    escreva(" 3. tenis de corrida  (Estoque: ", estoque_prod3, ") - R$ ", preco_prod3, "\n")

    escreva("Escolha o produto: \n")
    leia(opcao_crud)

    escreva("digite a quantidade desejada: \n")
    leia(quantidade_temp)

    se (opcao_crud == 1)
    {
        se (quantidade_temp > 0 e quantidade_temp <= estoque_prod1)
        {
            qtd_carrinho_prod1 = qtd_carrinho_prod1 + quantidade_temp
            estoque_prod1 = estoque_prod1 - quantidade_temp
            
            escreva("Item adicionado ao carrinho com sucesso!\n")
        }
        senao
        {
            escreva("Quantidade invalida ou estoque insuficiente!\n")
        }
    }
    senao se (opcao_crud == 2)
    {
        se (quantidade_temp > 0 e quantidade_temp <= estoque_prod2)
        {
            qtd_carrinho_prod2 = qtd_carrinho_prod2 + quantidade_temp
            estoque_prod2 = estoque_prod2 - quantidade_temp
          
            escreva("Item adicionado ao carrinho com sucesso!\n")
        }
        senao
        {
            escreva("Quantidade invalida ou estoque insuficiente!\n")
        }
    }
    senao se (opcao_crud == 3)
    {
        se (quantidade_temp > 0 e quantidade_temp <= estoque_prod3)
        {
            qtd_carrinho_prod3 = qtd_carrinho_prod3 + quantidade_temp
            estoque_prod3 = estoque_prod3 - quantidade_temp
          
            escreva("Item adicionado ao carrinho com sucesso!\n")
        }
        senao
        {
            escreva("Quantidade invalida ou estoque insuficiente!\n")
        }
    }
    senao
    {
        escreva("produto inválido\n")
    }

    escreva("Pressione ENTER para voltar ao menu ...\n")
    leia(tecla_pausa)
    pare

//=============================================
//R - READ (visualizar o Carrinho)
//=============================================

caso 2:
    limpa()

    escreva("--- MEU CARRINHO DE COMPRAS ---\n")

    escreva("Pressione ENTER para voltar ao menu ...\n")
    leia(tecla_pausa)
    pare

//=============================================
//U - UPDATE (atualizar quantidade no carrinho)
//=============================================

caso 3:
    limpa()

    escreva("---ALTERAR QUANTIDADE NO CARRINHO---\n")

    escreva("1. camisa esportiva (no carrinho: ", qtd_carrinho_prod1, ")")
    escreva("2. Boné Casual (no carrinho: ", qtd_carrinho_prod2, ")")
    escreva("3. tênis de corrida (no carrinho: ", qtd_carrinho_prod3, ")")

    escreva("escolha um item que deseja alterar: \n")
    leia(opcao_crud)

    escreva("Digite a nova quanttidade total desejada no carrinho: \n")
    leia(quantidade_temp)

    se (opcao_crud == 1)
    {
        estoque_prod1 = estoque_prod1 + qtd_carrinho_prod1

        se (quantidade_temp >= 0 e quantidade_temp <= estoque_prod1)
        {
            qtd_carrinho_prod1 = quantidade_temp
            estoque_prod1 = estoque_prod1 - quantidade_temp
            escreva("Quantidade atualizada\n")
        }
        senao
        {
            estoque_prod1 = estoque_prod1 - qtd_carrinho_prod1
            escreva("Quantidade indisponivel no estoque\n")
        }
    }
    senao se (opcao_crud == 2)
    {
        estoque_prod2 = estoque_prod2 + qtd_carrinho_prod2

        se (quantidade_temp >= 0 e quantidade_temp <= estoque_prod2)
        {
            qtd_carrinho_prod2 = quantidade_temp
            estoque_prod2 = estoque_prod2 - quantidade_temp
            escreva("Quantidade atualizada\n")
        }
        senao
        {
            estoque_prod2 = estoque_prod2 - qtd_carrinho_prod2
            escreva("Quantidade indisponível no estoque!\n")
        }
    }
    senao se (opcao_crud == 3)
    {
        estoque_prod3 = estoque_prod3 + qtd_carrinho_prod3

        se (quantidade_temp >= 0 e quantidade_temp <= estoque_prod3)
        {
            qtd_carrinho_prod3 = quantidade_temp
            estoque_prod3 = estoque_prod3 - quantidade_temp
            escreva("Quantidade atualizada\n")
        }
        senao
        {
            estoque_prod3 = estoque_prod3 - qtd_carrinho_prod3
            escreva("Quantidade indisponível no estoque!\n")
        }
    }
    senao
    {
        escreva("Opção inválida\n")
    }

    escreva("Pressione ENTER para voltar ao menu...\n")
    leia(tecla_pausa)
    pare

// ====================================================
// D - DELETE (Remover Item do Carrinho)
// ====================================================

caso 4:
    limpa()
    escreva("--- REMOVER ITEM DO CARRINHO ---\n")

    escreva("1. Remover todas as Camisas\n")
    escreva("2. Remover todos os Bonés\n")
    escreva("3. Remover todos os Tênis\n")

    escreva("Escolha qual produto remover completamente: \n")
    leia(opcao_crud)

    se (opcao_crud == 1)
    {
        estoque_prod1 = estoque_prod1 + qtd_carrinho_prod1
        qtd_carrinho_prod1 = 0

        escreva("Produto removido do carrinho!\n")
    }
    senao se (opcao_crud == 2)
    {
        estoque_prod2 = estoque_prod2 + qtd_carrinho_prod2
        qtd_carrinho_prod2 = 0

        escreva("Produto removido do carrinho!\n")
    }
    senao se (opcao_crud == 3)
    {
        estoque_prod3 = estoque_prod3 + qtd_carrinho_prod3
        qtd_carrinho_prod3 = 0

        escreva("Produto removido do carrinho!\n")
    }
    senao
    {
        escreva("Opção inválida!\n")
    }

    escreva("Pressione ENTER para voltar ao menu...\n")
    leia(tecla_pausa)
    pare

caso 0:
    pare

caso contrario:
    escreva("Opção Inválida! Tente novamente.\n")
    escreva("Pressione ENTER para continuar...\n")
    leia(tecla_pausa)
  }
}

// ==========================================
// TELA DE PAGAMENTO
// ==========================================

limpa()

valor_total_bruto = (qtd_carrinho_prod1 * preco_prod1) + (qtd_carrinho_prod2 * preco_prod2) + (qtd_carrinho_prod3 * preco_prod3)

se (valor_total_bruto == 0)
{
  escreva("Você não comprou nenhum produto. Obrigado por visitar nossa loja!\n")
}
senao
{
  escreva("=== TELA DE PAGAMENTO ===\n")
  escreva("Valor total da compra: R$ ", valor_total_bruto, "")

  escreva("Formas de pagamento:\n")
  escreva("1. À vista no Pix (10% de Desconto)\n")
  escreva("2. Cartão de Crédito (Valor Integral)\n")

  escreva("Escolha a forma de pagamento: \n")
  leia(opcao_pagamento)

  se (opcao_pagamento == 1)
  {
      valor_desconto = valor_total_bruto * 0.10
      valor_final = valor_total_bruto - valor_desconto

      escreva("Desconto aplicado: R$ ", valor_desconto, "")
  }
  senao
  {
      valor_desconto = 0.0
      valor_final = valor_total_bruto

      escreva("Pagamento no cartão selecionado.\n")
  }

  escreva("\nPressione ENTER para gerar a Nota Fiscal...\n")
  leia(tecla_pausa)

  // ==========================================
  // NOTA FISCAL DETALHADA
  // ==========================================

  limpa()
  escreva("==================================================\n")
  escreva("           NOTA FISCAL - LOJA VIRTUAL             \n")
  escreva("==================================================\n")
  escreva("Itens comprados:\n ")

  se (qtd_carrinho_prod1 > 0)
  {
      escreva("- ", qtd_carrinho_prod1, "x Camisa Esportiva = R$ ", (qtd_carrinho_prod1 * preco_prod1), "\n")
  }

  se (qtd_carrinho_prod2 > 0)
  {
      escreva("- ", qtd_carrinho_prod2, "x Boné Casual       = R$ ", (qtd_carrinho_prod2 * preco_prod2), "\n")
  }

  se (qtd_carrinho_prod3 > 0)
  {
      escreva("- ", qtd_carrinho_prod3, "x Tênis de Corrida  = R$ ", (qtd_carrinho_prod3 * preco_prod3), "\n")
  }

  escreva("--------------------------------------------------\n")
  escreva("Valor Bruto: R$ ", valor_total_bruto, "\n")
  escreva("Desconto:    R$ ", valor_desconto, "\n")
  escreva("VALOR FINAL: R$ ", valor_final, "\n")
  escreva("--------------------------------------------------\n")
  escreva("Obrigado pela preferência e volte sempre!\n")
}
}
}