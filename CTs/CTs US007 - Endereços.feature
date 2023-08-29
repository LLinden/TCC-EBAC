            Cenário: 1 - Visualização dos dados de endereço de cobrança e endereço de envio
            Dado que um usuário acesse o painel "Minha Conta"
            Quando o usuário acessar o menu "Endereços"
            Então devem ser carregados em tela os endereços cadastrados para cobrança e para envio


            Cenário: 2 - Acesso a edição dos dados de endereço de cobrança
            Dado que um usuário acesse o o menu "Endereços"
            Quando o usuário clicar em "Edit" na sessão "Billing Address"
            Então deverá ser carregada formulário de preenchimento do endereço de faturamento


            Cenário: 3 - Preenchimento obrigatório dos campos de formulário de endereço de cobrança
            Dado que um usuário acesse a tela de edição de endereço de faturamento
            Quando o usuário deixar de preencher o campo <campo>
            E preencher os demais campos
            Então ao salvar deve ser exibida mensagem <campo> "é um campo obrigatório."

            Exemplos:
            | campo              |
            | Nome               |
            | Sobrenome          |
            | País               |
            | Endereço           |
            | Cidade             |
            | Estado             |
            | CEP                |
            | Telefone           |
            | Endereço de e-mail |


            Cenário: 4 - Acesso a edição dos dados de endereço de envio
            Dado que um usuário acesse o o menu "Endereços"
            Quando o usuário clicar em "Edit" na sessão "Shipping Address"
            Então deverá ser carregada formulário de preenchimento do endereço de entrega


            Cenário: 5 - Preenchimento obrigatório dos campos de formulário de endereço de entrega
            Dado que um usuário acesse a tela de edição de endereço de entrega
            Quando o usuário deixar de preencher o campo <campo>
            E preencher os demais campos
            Então ao salvar deve ser exibida mensagem <campo> "é um campo obrigatório."

            Exemplos:
            | campo              |
            | Nome               |
            | Sobrenome          |
            | País               |
            | Endereço           |
            | Cidade             |
            | Estado             |
            | CEP                |