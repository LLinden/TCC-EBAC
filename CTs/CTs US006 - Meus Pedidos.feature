Cenário: 1 - Acesso ao menu Pedidos com usuário sem pedidos
Dado que um usuário que não possua pedidos acesse o painel "Minha Conta"
Quando o usuário acessar o menu "Pedidos"
Então deverá ser exibida a mensagem "Nenhum pedido foi feito ainda."
E o botão "Ver Produtos" deve estar habilitado


Cenário: 2 - Exibição de pedidos para usuário que possua pedidos registrados
Dado que um usuário que possua pedidos acesse o painel "Minha Conta"
Quando o usuário acessar o menu "Pedidos"
Então deverá ser exibida tabela contendo "ID do Pedido", "Data", "Status", "Total" e "Ações"
E os campos acima deverão estar preenchidos com os dados do pedido


Cenário: 3 - Funcionamento do botão "Visualizar"
Dado que um suário que possua pedidos acesse o menu "Pedidos"
Quando o usuário clicar no botão "Visualizar"
Então ele deve ser redirecionado para a tela de "Detalhes do Pedido"


Cenário: 4 - Acesso aos Detalhes do Pedido via ID do produto
Dado que um suário que possua pedidos acesse o menu "Pedidos"
Quando ele clicar no número do "Pedido" na tabela de pedidos
Então ele deve ser redirecionado para a tela de "Detalhes do Pedido"
