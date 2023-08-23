# Somente usuários ativos podem fazer login;
Contexto: usuário ativo acessa a área de Login da loja EBAC-SHOP
Dado que um usuário ativo acesse a página de Login
Quando o usuário digitar seu usuário e senha
E clicar em "Login"
Então ele será logado com sucesso na plataforma

# Deve exibir uma mensagem de erro caso o usuário erre o login e senha;