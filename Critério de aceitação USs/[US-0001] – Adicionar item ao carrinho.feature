            # Não é permitido inserir mais de 10 itens de um mesmo produto ao carrinho;
            Contexto: usuário cliente acessando o Portal EBAC-SHOP para realizar compras
            Dado que um usuário cliente adicione quantidade maior que 10 itens de um mesmo produto na tela de compra do produto
            Quando o usuário clicar no botão comprar "Comprar"
            Então deve ser exibida uma mensagem informando que não é permitido inserir mais de 10 itens de um mesmo produto no carrinho

            # Os valores não podem ultrapassar a R$ 990,00;
            Contexto: usuário cliente com carrinho contendo itens que ultrapassem o valor de R$ 990,00
            Dado que um usuário cliente adicione itens em seu carrinho ultrapassando a soma de R$ 990,00
            Quando o usuário clicar no botão "Concluir Compra"
            Então deve ser exibida uma mensagem informando que o valor máximo por compra é de R$ 990,00

            # Valores entre R$ 200 e R$ 600 , ganham cupom de 10%
            Contexto: usuário cliente com carrinho contendo itens que somem entre R$ 200 e R$ 600,00
            Dado que um usuário cliente possua itens em seu carrinho somando valor entre R$ 200 e R$ 600
            Quando o usuário verificar o Total no tabela de Total do Carrinho
            Então o valor total deverá ser o subtotal menos 10% de desconto

            # Valores acima de R$ 600 ganham cupom de 15%
            Contexto: usuário cliente com carrinho contendo itens que somados ultrapassem R$ 600,00
            Dado que um usuário cliente possua itens em seu carrinho somando valor que ultrapasse R$ 600,00
            Quando o usuário verificar o Total no tabela de Total do Carrinho
            Então o valor total deverá ser o subtotal menos 15% de desconto