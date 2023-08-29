            Cenário: 1 - Exibição de mensagem de boas-vindas e explicação do painel
            Dado que um usuário cliente acesse o painel "Minha Conta"
            Quando a tela inicial for carregada
            Então deve ser exibida em tela a mensagem <mensagem>
            E o nome de usuário

            Exemplos:
            | mensagem                                                                                                                                                                     |
            | A partir do painel de controle de sua conta, você pode ver suas compras recentes, gerenciar seus endereços de entrega e faturamento, e editar sua senha e detalhes da conta. |


            Cenário: 2 - Navegação para o menu Downloads
            Dado que um usuário cliente acesse o painel "Minha Conta"
            Quando ele clicar no menu lateral em "Downloads"
            Então deve ser carregada a tela de Downloads do usuário


            Cenário: 3 - Navegação para o menu Endereços
            Dado que um usuário cliente acesse o painel "Minha Conta"
            Quando ele clicar no menu lateral em "Endereços"
            Então deve ser carregada a tela de Endereços do usuário


            Cenário: 4 - Navegação para o menu Detalhes da Conta
            Dado que um usuário cliente acesse o painel "Minha Conta"
            Quando ele clicar no menu lateral em "Detalhes da Conta"
            Então deve ser carregada a tela de Detalhes da Conta do usuário


            Cenário: 5 - Logoff a partir do painel Minha Conta via Menu
            Dado que um usuário cliente acesse o painel "Minha Conta"
            Quando ele clicar no menu lateral em "Sair"
            Então ele deve ser deslogado do sistema
            E sair da tela Minha Conta


            Cenário: 6 - Logoff a partir do painel Minha Conta via tela de Painel
            Dado que um usuário cliente acesse o painel "Minha Conta"
            Quando ele clicar em "Sair" na tela inicial do painel "Minha Conta"
            Então ele deve ser deslogado do sistema
            E sair da tela Minha Conta