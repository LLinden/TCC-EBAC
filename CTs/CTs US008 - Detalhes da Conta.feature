            Cenário: 1 - Visualização dos dados da conta
            Dado que um usuário acesse o painel "Minha Conta"
            Quando o usuário acessar o menu "Detalhes da Conta"
            Então devem ser carregados em tela os dados "Nome", "Sobrenome", "Nome de exibição" e "Endereço de email"


            Cenário: 2 - Preenchimento obrigatório dos campos de datalhe da conta
            Dado que um usuário acesso o menu "Detalhes da Conta"
            Quando ele não preencher o campo <campo>
            E preencher os demais campos
            Então ao salvar deve ser exibida mensagem <campo> "é um campo obrigatório."

            Exemplos:
            | campo         |
            | First name    |
            | Last name     |
            | Display name  |
            | Email address |


            Cenário: 3 - Edição dos dados da conta
            Dado que um usuário acesso o menu "Detalhes da Conta"
            Quando ele preencher todos os campos obrigatórios (sinalizados com asterisco vermelho)
            Então ao salvar seus novos dados serão atualizados com sucesso


            Cenário: 4 - Alteração de senha da conta
            Dado que um usuário acesso o menu "Detalhes da Conta"
            Quando ele preencher os campos "Current Password" com a senha atual
            E "New Password" e "Confirm New Password" com nova senha
            Então ao salvar sua senha de acesso será atualizada com sucesso

