*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${Url_login}            https://demoqa.com/login
${First_name}           Carlos
${Last_name}            Nobre
${nameUser}             Carlos Nobre
${password_user}        Cn@123456
${user_alert}           User Register Successfully.
${book_alert}           Book already present in the your collection!
${book_collection}      Book added to your collection.

*** Keywords ***

Abrir o navegador
    Open Browser        browser=chrome
    Maximize Browser Window

Fechar o navegador
    Close Browser

Acessar a Página Principal
    Go to                   ${Url_login}
    Execute JavaScript      window.scrollBy(0, 500);
    Sleep                   3s
           
Clicar no botão novo usuário
    Click Element       newUser

Preencher campo primeiro nome
    Input Text          firstname       ${First_name}

Preencher campo sobrenome
    Input Text          lastname        ${Last_name}      

Preencher Campo Nome de Usuário
    Input Text          userName        ${nameUser}

Preencher Campo Senha
    Input Password      password        ${password_user}
    Sleep               30s

Clicar no botão registro
    Click Element       register

Verificar mensagem de sucesso 
    Alert Should Be Present
    ${user_alert}       Get Text From Alert
    Should Be Equal As Strings      ${user_alert}       

Acessar a Página Principal
    Go to                   ${Url_login}
    Execute JavaScript      window.scrollBy(0, 500);
    Sleep                   3s

Preencher campo Nome de usuário
    Input Text          userName        ${nameUser}

Preencher campo senha
    Input Password      password        ${password_user}

Clicar no botão Conecte-se
    Click Element       login

Verificar Username na Tela Profile
    Page Should Contain Element      userName-label     "Carlos Nobre"

Clicar no botão “Vá para a livraria”
    Click Element       gotoStore

Clicar no livro Falando JavaScript
    Click Element       //div[@class='rt-td'][contains(.,'Falando JavaScript')]

Clicar no botão Adicione à sua coleção
    Click Element       addNewRecordButton

Verificar exibição da mensagem de adição
    Alert Should Be Present
    ${user_alert}                   Get Text From Alert
    Should Be Equal As Strings      ${book_alert}

Clicar no botão Ok
    Click Element       //button[contains(@id,'timerAlertButton')]

Clicar na opção Perfil
    Click Element       item-3

E verificar o livro adicionado
    Element Should Be Visible     //img[contains(@alt,'imagem')]

Clicar na opção Livraria
    Click Element       item-2

No campo de busca escrever a palavra que deseja pesquisar
    Input Text      searchBox       “JavaScript”  

Clicar no livro “Falando JavaScript”
    Click Element       see-book-Speaking JavaScript                 

Verificar título
    Element Should Be Visible       userName-value      (//font[contains(.,'Falando JavaScript')])[2]

Verificar Autor
    Element Should Be Visible       userName-value      (//font[contains(.,'Axel Rauschmayer')])[2]

Verificar Editora
    Element Should Be Visible       userName-value      (//font[contains(.,'O'Reilly Media')])[2]                   

Verificar nome do usuário
    Element Should Contain      (//font[contains(.,'Carlos Nobre')])[2]

Clicar no botão adicione a sua coleção
    Click Element       addNewRecordButton

Visualizar mensagem de inclusão
    Alert Should Be Present
    ${book_collection}              Get Text From Alert
    Should Be Equal As Strings      ${book_collection}