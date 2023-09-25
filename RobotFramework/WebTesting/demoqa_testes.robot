*** Settings ***

Documentation       Esta suíte testa o site https://demoqa.com
Resource            demoqa_resources.robot
Test Setup          Abrir o navegador
Test Teardown       Fechar o navegador



*** Test Cases ***

Caso de Teste 01: Registrar na Livraria
    [Documentation]         Esse teste verifica a ação do usuário se cadastrar na livraria.
    [Tags]                  cadastrar_usuario                  

    Acessar a página principal
    Clicar no botão novo usuário
    Preencher campo primeiro nome
    Preencher campo sobrenome
    Preencher campo Nome de usuário
    Preencher campo senha
    Clicar no botão registro
    Verificar mensagem de sucesso
    

Caso de Teste 02: Fazer login com senha válida
    [Documentation]         Esse teste verifica a ação do usuário fazer login com sucesso e visualizar seu nome na tela.
    [Tags]                  login                  

    Acessar a Página Principal
    Preencher campo Nome de usuário
    Preencher campo senha
    Clicar no botão Conecte-se
    Verificar Username na Tela Profile


Caso de Teste 03: Adicionar livro ao seu perfil
    [Documentation]         Esse teste verifica que o usuário consegue adicionar um livro ao seu perfil.
    [Tags]                  adicionar_livro

    Acessar a Página Principal
    Preencher campo Nome de usuário
    Preencher campo senha
    Clicar no botão Conecte-se
    Clicar no botão “Vá para a livraria”
    Clicar no livro Falando JavaScript
    Clicar no botão Adicione à sua coleção
    Verificar exibição da mensagem de adição
    Clicar no botão Ok
    Clicar na opção Perfil
    E verificar o livro adicionado 


Caso de Teste 04: Pesquisar Livro
    [Documentation]         Esse teste verifica que o usuário pode pesquisar um livro e visualizar seus detalhes.
    [Tags]                  javascript

    Clicar na opção Livraria
    No campo de busca escrever a palavra que deseja pesquisar
    Clicar no livro “Falando Java”
    Verificar título
    Verificar Autor
    Verificar Editora
    Verificar nome do usuário
    Clicar no botão adicione a sua coleção
    Visualizar mensagem de inclusão