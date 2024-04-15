#language: pt

Funcionalidade:  Login na plataforma
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

Contexto: 

Dado que eu acesse a página de autenticação do portal EBAC

Esquema do Cenário: Autenticação Válida
Quando o usuário digitar o username <username>
E a senha <senha>
Então deve direcionar para a tela e checkout

Esquema do Cenário: Usuário ou senha inválidos
Quando o usuário digitar o username <username_invalido>
E a senha <senha_invalida>
Então deve exibir a mensagem de alerta "Usuário ou senha inválidos"

Exemplos:
|username               |senha                  |username_invalido          |senha_invalida | 
|"teste1@ebac.com.br"     |"teste1"        |"teste1@ebac.com.br"    |"erro1"    |
|"teste2@ebac.com.br" |"teste2"        |"teste2@ebac.com.br"   |"erro2" |
|"teste3@ebac.com.br"     |"teste3"|"teste3@ebac.com.br"       |"erro3"      |