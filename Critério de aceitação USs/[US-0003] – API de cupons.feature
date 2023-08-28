# Deve listar todos os cupons cadastrado ou listar buscando por ID do cupom
Contexto: usuário logado no Swagger com usuário: admin_ebac e senha: @admin!&b@c!2022
Dado que um usuário dispare uma requisição GET para /wc/v3/coupons
Então o retorno deve ser status 200
E uma lista de cupons caso hajam

# Deve cadastrar os cupons
# Caminho feliz
Contexto: usuário logado no Swagger com usuário: admin_ebac e senha: @admin!&b@c!2022
Dado que um usuário prepare um requisição POST para /wc/v3/coupons
Quando ele preencher os campos "Código do cupom", "Valor", "Tipo do desconto" e "Descrição" com valores únicos
E disparar a requisição
Então o retorno deve ser status 201

# Deve cadastrar os cupons
# Nome do cupom não pode ser repetido
Contexto: usuário logado no Swagger com usuário: admin_ebac e senha: @admin!&b@c!2022
Dado que um usuário prepare um requisição POST para /wc/v3/coupons
Quando ele disparar a requisição preenchendo o campo "Código do cupom" com o valor "Exemplo1"
Então o retorno deve ser status 400
E deve ser exibida mensagem "O código de cupom já existe"

# Deve cadastrar os cupons
# Campo código do cupom deve ser obrigatório
Contexto: usuário logado no Swagger com usuário: admin_ebac e senha: @admin!&b@c!2022
Dado que um usuário prepare um requisição POST para /wc/v3/coupons
Quando ele disparar a requisição sem preencher o campo "Código do cupom"
Então o retorno deve ser status 400