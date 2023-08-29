            # AUTOMATIZADO UI
            # Somente usuários ativos podem fazer login;
            Contexto: usuário ativo acessa a área de Login da loja EBAC-SHOP
            Dado que um usuário ativo acesse a página de Login
            Quando o usuário digitar seu usuário e senha
            E clicar em "Login"
            Então ele será logado com sucesso na plataforma

            # Somente usuários ativos podem fazer login;
            Contexto: usuário inativo acessa a área de Login da loja EBAC-SHOP
            Dado que um usuário inativo acesse a página de Login
            Quando o usuário digitar seu usuário e senha
            E clicar em "Login"
            Então não deverá ser possível realizar login na plataforma

            # AUTOMATIZADO UI
            # Deve exibir uma mensagem de erro caso o usuário erre o login e senha;
            Contexto: usuário ou senha inválidos são utilizados na tentativa de login
            Dado que o campo usuário seja peenchido com <usuario>
            E o campo senha com <senha>
            Quando o usuário clicar em "Login"
            Então deve ser exibida uma mensagem de erro

            Exemplos:
            | usuario          | senha          |
            | usuario_invalido | senha_valida   |
            | usuario_valido   | senha_invalida |

            # Se o usuário errar por 3 vezes a senha, deve travar por 15 minutos o login
            Contexto: usuário com senha inválida realizando tentativa de login
            Dado que um usuário válido ativo preencha a senha errada
            Quando o usuário tentar realizar o login por 3 vezes
            Então a próxima tentativa de login deve ser possível apenas após 15 minutos