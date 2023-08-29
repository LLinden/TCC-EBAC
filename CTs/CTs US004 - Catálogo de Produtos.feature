            Cenário: 1 - Ordenação de produtos na página
            Dado que um usuário cliente acesse o catálogo de produtos
            Quando o usuário selecionar o seletor de ordenação
            Então deve ser possível ordenar os produtos por <ordenacao>

            Exemplos:
            | ordenacao                             |
            | Ordenação padrão                      |
            | Ordenar por popularidade              |
            | Ordenar por média de classificação    |
            | Ordenar por mais recente              |
            | Ordenar por preço: menor para o maior |
            | Ordenar por preço: maior para o menor |


            Cenário: 2 - Visualização dos produtos em lista
            Dado que um usuário cliente acesse o catálogo de produtos
            Quando o usuário clicar no ícone de lista abaixo do título "Produtos"
            Então os produtos devem ser exibidos em formato de lista na tela

            
            Cenário: 3 - Quantidade de produtos por página
            Dado que um usuário cliente acesse o catálogo de produtos
            Quando a tela inicial de Produtos for carregada
            Então devem ser exibidos 9 produtos por página


            Cenário: 4 - Paginação do catálogo
            Dado que um usuário cliente acesse o catálogo de produtos
            Quando o usuário clicar nos botões de número de páginas e seta
            Então deve ser alterada (avançar ou retroceder) a página do catálogo de produtos
